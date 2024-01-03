import tkinter as tk
from tkinter import messagebox
from datetime import datetime
import mysql.connector

def calculate_experience(start_teaching_date, end_teaching_date):
    # Start date is in the format 'YYYY-MM-DD'
    start = datetime.strptime(start_teaching_date, "%Y-%m-%d")
    end = datetime.strptime(end_teaching_date, "%Y-%m-%d")
    experience = end - start
    experience_years = experience.days / 365
    return experience_years

def save_information():
    # Get the teacher information 
    name = name_entry.get()
    date_of_birth = date_of_birth_entry.get()
    phone_number = phone_number_entry.get()
    address = address_entry.get()
    email = email_entry.get()
    start_teaching_date = start_teaching_date_entry.get()
    end_teaching_date = end_teaching_date_entry.get()

    if not name or not date_of_birth or not phone_number or not address or not email or not start_teaching_date or not end_teaching_date:
        # Display an error message 
        messagebox.showerror("Error", "Please fill in all the required fields")
        return

    # Calculate the teaching experience
    teaching_experience = calculate_experience(start_teaching_date, end_teaching_date)

    # Connect to the MySQL database
    try:
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="",
            database="teacher_registration"
        )

        # Create a cursor object to execute SQL queries
        cursor = connection.cursor()

        # Create the table if it doesn't exist
        create_table_query = """
        CREATE TABLE IF NOT EXISTS teacher (
            id INT AUTO_INCREMENT PRIMARY KEY,
            name VARCHAR(255),
            date_of_birth DATE,
            phone_number VARCHAR(20),
            address VARCHAR(255),
            email VARCHAR(255),
            start_date DATE,
            end_date DATE,
            experience INT
        )
        """
        cursor.execute(create_table_query)

        # Insert the teacher information into the table
        insert_data_query = """
        INSERT INTO teacher (name, date_of_birth, phone_number, address, email, start_date, end_date, experience)
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s)
        """
        data = (name, date_of_birth, phone_number, address, email, start_teaching_date, end_teaching_date, teaching_experience)
        cursor.execute(insert_data_query, data)

        # Commit the changes to the database
        connection.commit()

        # Display a success message
        messagebox.showinfo("Success", "Teacher information saved successfully!")

    finally:
        # Close the database connection
        if connection.is_connected():
            cursor.close()
            connection.close()


# Create the main root
root = tk.Tk()
root.title("Little Caliphs Kindergarten")
root.geometry("1000x600")
root.config(bg="lightgreen")

# Create teeacher registration input
teacher_info = tk.LabelFrame(root, text="Experience Teacher Registration Form")
teacher_info.grid (padx=20, pady=20,)

name_label= tk.Label(teacher_info, text="Full Name (Capital Letters):")
name_label.grid(row=0, column=0, padx=20, pady=20)
name_entry = tk.Entry(teacher_info, width=50 )
name_entry.grid(row=0, column=1, padx=20, pady=20)

date_of_birth_label= tk.Label(teacher_info, text="Date of Birth (YYYY-MM-DD):")
date_of_birth_label.grid(row=1, column=0,)
date_of_birth_entry = tk.Entry(teacher_info, width=40  )
date_of_birth_entry.grid(row=1, column=1, sticky="w", padx=20, pady=20)

phone_number_label= tk.Label(teacher_info, text="Phone Number:")
phone_number_label.grid(row=1, column=2,)
phone_number_entry = tk.Entry(teacher_info)
phone_number_entry.grid(row=1, column=3 , padx=20, pady=20)

address_label= tk.Label(teacher_info, text="Address:")
address_label.grid(row=2, column=0)
address_entry = tk.Entry(teacher_info, width=50 )
address_entry.grid(row=2, column=1, padx=20, pady=20)

email_label=tk.Label(teacher_info, text="Email:")
email_label.grid(row=3, column=0)        
email_entry = tk.Entry(teacher_info, width=50 )
email_entry.grid(row=3, column=1, padx=20, pady=20)

start_teaching_date_label = tk.Label(teacher_info, text="Start Date of Teaching (YYYY-MM-DD):")
start_teaching_date_label.grid(row=4, column=0)
start_teaching_date_entry = tk.Entry(teacher_info, width=40)
start_teaching_date_entry.grid(row=4, column=1, sticky="w", padx=20, pady=20)

end_teaching_date_label = tk.Label(teacher_info, text="End Date of Teaching (YYYY-MM-DD):")
end_teaching_date_label.grid(row=4, column=2)
end_teaching_date_entry = tk.Entry(teacher_info,)
end_teaching_date_entry.grid(row=4, column=3, padx=20, pady=20)


# Create save button
save_button = tk.Button(root, text="Calculate Experience & Save Information", command=save_information, bg="darkgreen")
save_button.grid()

# Start the main loop
root.mainloop()