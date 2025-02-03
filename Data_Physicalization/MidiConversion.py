import mido
import csv

midi_file = mido.MidiFile('vp3-1pre.mid')

note_values = []
for track in midi_file.tracks:
    for msg in track:
        if msg.type == 'note_on':
            note_value = msg.note
            note_values.append(note_value)
            
beats_per_measure = 4 
measures = []
measure_start = 0
note_group = []
for i, note_value in enumerate(note_values):
    if i % beats_per_measure == 0:
        for j in range(measure_start, i):
            note_group.append(note_values[j])
        if len(note_group) != 0:
            average_note_value = sum(note_group) / float(len(note_group))
            measures.append(average_note_value)
            measure_start = i
        note_group = [] 

csv_file = 'Bach_Partita3_data.csv'
with open(csv_file, mode='w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Note Group', 'Average Group Value'])
    for i, value in enumerate(measures):
        writer.writerow([i + 1, value])
