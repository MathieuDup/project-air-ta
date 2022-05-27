# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
p "Creating users"

Teacher.destroy_all
User.destroy_all
Language.destroy_all
TeachersLanguage.destroy_all

file32 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661956/development/6hn7n7wjgmrlqi8vkyw00iz5uflt.png')
user1 = User.create(username: "Marceau", email: "marceau@lewagon.com", password: "secret")
user1.photo.attach(io: file32, filename: 'marceau.png', content_type: 'image/png')
file33 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661958/development/i3amgcyzklu2mtybm9rmtka14p43.jpg')
user2 = User.create(username: "Kévin", email: "kevin@lewagon.com", password: "secret")
user2.photo.attach(io: file33, filename: 'kevin2.png', content_type: 'image/png')
file34 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661960/development/kaold93q9blx738t9kzay7nl3lvk.png')
user3 = User.create(username: "Mélanie", email: "melanie@lewagon.com", password: "secret")
user3.photo.attach(io: file34, filename: 'melanie.png', content_type: 'image/png')
file35 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661962/development/r3kxnh0fkjokiczwsp0s50sru24z.png')
user4 = User.create(username: "Christopher", email: "christopher@lewagon.com", password: "secret")
user4.photo.attach(io: file35, filename: 'christopher.png', content_type: 'image/png')
file36 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661963/development/qyhukbnhycbcdc9bt3qehy0mrrhs.png')
user5 = User.create(username: "Rayane", email: "rayane@lewagon.com", password: "secret")
user5.photo.attach(io: file36, filename: 'rayane.png', content_type: 'image/png')
file37 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661965/development/ijfbcozq0ohkerzjlz8inhe97mkr.jpg')
user6 = User.create(username: "Mahdi", email: "mahdi@lewagon.com", password: "secret")
user6.photo.attach(io: file37, filename: 'mahdi.png', content_type: 'image/png')
User.create(username: "Emy", email: "emy@lewagon.com", password: "secret")

p "Creating teachers"
file1 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661967/development/i0kkw88nqyocpaddyz7mi9k5de8j.png')
teacher1 = Teacher.create(name: "Kalid", location: "Place des Quinconces, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher1.photo.attach(io: file1, filename: "kalid.jpg", content_type: "image/jpg")
file2 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661970/development/ck4jws7im6lyx2sjrvocnzln8jkl.png')
teacher2 = Teacher.create(name: "Jérome", location: "Cours Victor Hugo, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher2.photo.attach(io: file2, filename: "jerome.jpg", content_type: "image/jpg")
file3 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661972/development/0qwsmx7wxppeifssnru9unghlr1b.png')
teacher3 = Teacher.create(name: "Florian C", location: "Cours Portal, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher3.photo.attach(io: file3, filename: "florian.jpg", content_type: "image/jpg")
file4 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661975/development/fo4vph5zb927bu2jhgrmph5241gp.png')
teacher4 = Teacher.create(name: "Mathieu", location: "Quai Bacalan, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher4.photo.attach(io: file4, filename: "mathieu.jpg", content_type: "image/jpg")
file5 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661977/development/amfxa95y22qf17ubtauyek5jy4e3.png')
teacher5 = Teacher.create(name: "Patricia", location: "Quai de Paludate, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher5.photo.attach(io: file5, filename: "patricia.jpg", content_type: "image/jpg")
file6 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661979/development/cwbgnqcerp8qmys5zgmea40dofv5.png')
teacher6 = Teacher.create(name: "Kenzo", location: "Rue Gabriel Dedieu, Lormont", price: rand(100..1000), user_id: rand(1..6))
teacher6.photo.attach(io: file6, filename: "kenzo.jpg", content_type: "image/jpg")
file7 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661988/development/257yg1msehxy2yla5jf32foa48z0.png')
teacher7 = Teacher.create(name: "Théo", location: "Place de l'Europe, Ambarès", price: rand(100..1000), user_id: rand(1..6))
teacher7.photo.attach(io: file7, filename: "theo.jpg", content_type: "image/jpg")
file8 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661990/development/q88dlskchmtlejvtoh3t0rg1qux1.png')
teacher8 = Teacher.create(name: "Adrien", location: "Rue Saint James, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher8.photo.attach(io: file8, filename: "adrien.jpg", content_type: "image/jpg")
file9 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661992/development/tw0uva8s8u3w62u8qevbbuy2hmib.png')
teacher9 = Teacher.create(name: "Sophie", location: "Cours de l'Intendance, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher9.photo.attach(io: file9, filename: "sophie.jpg", content_type: "image/jpg")
file10 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661995/development/4its6zd9ff1yu8sb536whbod3tbl.png')
teacher10 = Teacher.create(name: "Enor", location: "Esplanade des Antilles, Pessac", price: rand(100..1000), user_id: rand(1..6))
teacher10.photo.attach(io: file10, filename: "enor.jpg", content_type: "image/jpg")
file11 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661997/development/w2wo58drr9z75oi3jcrl9g33w04k.png')
teacher11 = Teacher.create(name: "Brice", location: "Avenue du Maréchal de Lattre de Tassigny, Mérignac", price: rand(100..1000), user_id: rand(1..6))
teacher11.photo.attach(io: file11, filename: "brice.jpg", content_type: "image/jpg")
file12 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653661999/development/qa4y3cmhxkqev240c78olkxoyucl.png')
teacher12 = Teacher.create(name: "Cyprien", location: "Avenue Charles de Gaulle, Bruges", price: rand(100..1000), user_id: rand(1..6))
teacher12.photo.attach(io: file12, filename: "cyprien.jpg", content_type: "image/jpg")
file13 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662002/development/n2d7eznf9ofrmz0doz8t0xssly6t.png')
teacher13 = Teacher.create(name: "Marc", location: "Place Gambetta, Le Bouscat", price: rand(100..1000), user_id: rand(1..6))
teacher13.photo.attach(io: file13, filename: "marc.jpg", content_type: "image/jpg")
file14 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662004/development/qyhikdujn3bf2uh7kio60jd9jzro.png')
teacher14 = Teacher.create(name: "Paul-Henri", location: "Avenue Carnot, Cenon", price: rand(100..1000), user_id: rand(1..6))
teacher14.photo.attach(io: file14, filename: "paul-henri.jpg", content_type: "image/jpg")
file15 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662006/development/jkc214ii8t99yl5ilx1l68dx1kab.png')
teacher15 = Teacher.create(name: "Raja", location: "Avenue Jean Jaurès, Bassens", price: rand(100..1000), user_id: rand(1..6))
teacher15.photo.attach(io: file15, filename: "raja.jpg", content_type: "image/jpg")
file16 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662008/development/vie4ydehdeiqkfo5aka8i7l3rlra.png')
teacher16 = Teacher.create(name: "Raphaël", location: "Rue Calixte-Camelle, Bègles", price: rand(100..1000), user_id: rand(1..6))
teacher16.photo.attach(io: file16, filename: "raphael.jpg", content_type: "image/jpg")
file17 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662016/development/vhinkqtcgkmhskzmlevw4gpur83f.png')
teacher17 = Teacher.create(name: "Guilhem", location: "Rue des Faussets, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher17.photo.attach(io: file17, filename: "guilhem.jpg", content_type: "image/jpg")
file18 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662019/development/dgxlu580be0s246t5rurkh3eyhr4.png')
teacher18 = Teacher.create(name: "Benjamin", location: "Rue du Pas-Saint-Georges, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher18.photo.attach(io: file18, filename: "benjamin.jpg", content_type: "image/jpg")
file19 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662021/development/ndktqa0pj73pu8md7g6pdwxppuyb.png')
teacher19 = Teacher.create(name: "Taï", location: "Place du Palais, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher19.photo.attach(io: file19, filename: "tai.jpg", content_type: "image/jpg")
file20 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662023/development/tx3z2g8xzk0uhtmnkr81g9znhieg.png')
teacher20 = Teacher.create(name: "Florian L", location: "Rue du Moulineau, Gradignan", price: rand(100..1000), user_id: rand(1..6))
teacher20.photo.attach(io: file20, filename: "florian.jpg", content_type: "image/jpg")
file21 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662026/development/ghlfv3xwhh6ohcw4se44v2tdb237.png')
teacher21 = Teacher.create(name: "Pierre", location: "Rue Sainte Catherine, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher21.photo.attach(io: file21, filename: "pierre.jpg", content_type: "image/jpg")
file22 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662028/development/u40zxw0kngl1aylgjhicb056qle9.png')
teacher22 = Teacher.create(name: "Humbert", location: "Route de Toulouse, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher22.photo.attach(io: file22, filename: "humbert.jpg", content_type: "image/jpg")
file23 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662030/development/khxtqmdy2htvij20zxbn0xir60s9.png')
teacher23 = Teacher.create(name: "Farah", location: "Quai des Chartrons, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher23.photo.attach(io: file23, filename: "farah.jpg", content_type: "image/jpg")
file24 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662033/development/zxnpukf2yrq9kuppac0qlg2ich5e.png')
teacher24 = Teacher.create(name: "Nicolas", location: "Cours Balguerie Stuttenberg, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher24.photo.attach(io: file24, filename: "nicolas.jpg", content_type: "image/jpg")
file25 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662040/development/bg8b7zeql5tkmdzyec4dmfaigz9a.png')
teacher25 = Teacher.create(name: "Océane", location: "Place Saint-Martial, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher25.photo.attach(io: file25, filename: "oceane.jpg", content_type: "image/jpg")
file26 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662043/development/af7rv9jmf998u2e43bylefumi3yj.png')
teacher26 = Teacher.create(name: "César", location: "Rue du Tondu, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher26.photo.attach(io: file26, filename: "cesar.jpg", content_type: "image/jpg")
file27 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662046/development/s4ajx1t2c6dlbzip583jxdc4pk2j.png')
teacher27 = Teacher.create(name: "Alexandre", location: "Place des Capucins, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher27.photo.attach(io: file27, filename: "alexandre.jpg", content_type: "image/jpg")
file28 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662048/development/4ks02la74n8he1z2tc3p6ufy3e1m.png')
teacher28 = Teacher.create(name: "Mehdi", location: "Rue des Menuts, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher28.photo.attach(io: file28, filename: "mehdi.jpg", content_type: "image/jpg")
file29 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662050/development/autlawmm7s61s0sndlu0lcdjbdbi.png')
teacher29 = Teacher.create(name: "Desty", location: "Rue du Cloitre, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher29.photo.attach(io: file29, filename: "desty.jpg", content_type: "image/jpg")
file30 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662053/development/khptaxjp1grh8mizotfroaav47t3.png')
teacher30 = Teacher.create(name: "Kévin", location: "Quai Deschamps, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher30.photo.attach(io: file30, filename: "kevin.jpg", content_type: "image/jpg")
file31 = URI.open('https://res.cloudinary.com/dtfxmzzss/image/upload/v1653662055/development/kj5wee4xnztlogjj69oaz91vzre1.png')
teacher31 = Teacher.create(name: "Fabien", location: "Quai de Brazza, Bordeaux", price: rand(100..1000), user_id: rand(1..6))
teacher31.photo.attach(io: file31, filename: "fabien.jpg", content_type: "image/jpg")

Language.create(name: "CSS")
Language.create(name: "HTML")
Language.create(name: "JS")
Language.create(name: "Rails")
Language.create(name: "Ruby")
Language.create(name: "React")
Language.create(name: "Python")
Language.create(name: "SQL")
Language.create(name: "C")
Language.create(name: "Java")
Language.create(name: "PHP")

TeachersLanguage.create(teacher_id: "1", language_id: "3")
TeachersLanguage.create(teacher_id: "1", language_id: "1")
TeachersLanguage.create(teacher_id: "1", language_id: "2")
TeachersLanguage.create(teacher_id: "2", language_id: "4")
TeachersLanguage.create(teacher_id: "2", language_id: "2")
TeachersLanguage.create(teacher_id: "2", language_id: "3")
TeachersLanguage.create(teacher_id: "3", language_id: "5")
TeachersLanguage.create(teacher_id: "3", language_id: "6")
TeachersLanguage.create(teacher_id: "3", language_id: "3")
TeachersLanguage.create(teacher_id: "4", language_id: "7")
TeachersLanguage.create(teacher_id: "4", language_id: "2")
TeachersLanguage.create(teacher_id: "4", language_id: "3")
TeachersLanguage.create(teacher_id: "5", language_id: "8")
TeachersLanguage.create(teacher_id: "5", language_id: "9")
TeachersLanguage.create(teacher_id: "5", language_id: "3")
TeachersLanguage.create(teacher_id: "6", language_id: "1")
TeachersLanguage.create(teacher_id: "6", language_id: "2")
TeachersLanguage.create(teacher_id: "6", language_id: "3")
TeachersLanguage.create(teacher_id: "7", language_id: "10")
TeachersLanguage.create(teacher_id: "7", language_id: "11")
TeachersLanguage.create(teacher_id: "7", language_id: "3")
TeachersLanguage.create(teacher_id: "8", language_id: "4")
TeachersLanguage.create(teacher_id: "8", language_id: "5")
TeachersLanguage.create(teacher_id: "8", language_id: "6")
TeachersLanguage.create(teacher_id: "9", language_id: "7")
TeachersLanguage.create(teacher_id: "9", language_id: "8")
TeachersLanguage.create(teacher_id: "9", language_id: "9")
TeachersLanguage.create(teacher_id: "10", language_id: "1")
TeachersLanguage.create(teacher_id: "10", language_id: "5")
TeachersLanguage.create(teacher_id: "10", language_id: "7")
TeachersLanguage.create(teacher_id: "11", language_id: "4")
TeachersLanguage.create(teacher_id: "11", language_id: "3")
TeachersLanguage.create(teacher_id: "11", language_id: "2")
TeachersLanguage.create(teacher_id: "12", language_id: "1")
TeachersLanguage.create(teacher_id: "12", language_id: "9")
TeachersLanguage.create(teacher_id: "12", language_id: "10")
TeachersLanguage.create(teacher_id: "13", language_id: "11")
TeachersLanguage.create(teacher_id: "13", language_id: "10")
TeachersLanguage.create(teacher_id: "13", language_id: "3")
TeachersLanguage.create(teacher_id: "14", language_id: "4")
TeachersLanguage.create(teacher_id: "14", language_id: "8")
TeachersLanguage.create(teacher_id: "14", language_id: "9")
TeachersLanguage.create(teacher_id: "15", language_id: "1")
TeachersLanguage.create(teacher_id: "15", language_id: "6")
TeachersLanguage.create(teacher_id: "15", language_id: "3")
TeachersLanguage.create(teacher_id: "16", language_id: "5")
TeachersLanguage.create(teacher_id: "16", language_id: "4")
TeachersLanguage.create(teacher_id: "16", language_id: "1")
TeachersLanguage.create(teacher_id: "17", language_id: "1")
TeachersLanguage.create(teacher_id: "17", language_id: "8")
TeachersLanguage.create(teacher_id: "17", language_id: "2")
TeachersLanguage.create(teacher_id: "18", language_id: "5")
TeachersLanguage.create(teacher_id: "18", language_id: "7")
TeachersLanguage.create(teacher_id: "18", language_id: "3")
TeachersLanguage.create(teacher_id: "19", language_id: "3")
TeachersLanguage.create(teacher_id: "19", language_id: "2")
TeachersLanguage.create(teacher_id: "19", language_id: "9")
TeachersLanguage.create(teacher_id: "20", language_id: "11")
TeachersLanguage.create(teacher_id: "20", language_id: "10")
TeachersLanguage.create(teacher_id: "20", language_id: "7")
TeachersLanguage.create(teacher_id: "21", language_id: "9")
TeachersLanguage.create(teacher_id: "21", language_id: "4")
TeachersLanguage.create(teacher_id: "21", language_id: "8")
TeachersLanguage.create(teacher_id: "22", language_id: "5")
TeachersLanguage.create(teacher_id: "22", language_id: "4")
TeachersLanguage.create(teacher_id: "22", language_id: "3")
TeachersLanguage.create(teacher_id: "23", language_id: "5")
TeachersLanguage.create(teacher_id: "23", language_id: "7")
TeachersLanguage.create(teacher_id: "23", language_id: "8")
TeachersLanguage.create(teacher_id: "24", language_id: "3")
TeachersLanguage.create(teacher_id: "24", language_id: "1")
TeachersLanguage.create(teacher_id: "24", language_id: "2")
TeachersLanguage.create(teacher_id: "25", language_id: "6")
TeachersLanguage.create(teacher_id: "25", language_id: "7")
TeachersLanguage.create(teacher_id: "25", language_id: "9")
TeachersLanguage.create(teacher_id: "26", language_id: "8")
TeachersLanguage.create(teacher_id: "26", language_id: "4")
TeachersLanguage.create(teacher_id: "26", language_id: "7")
TeachersLanguage.create(teacher_id: "27", language_id: "9")
TeachersLanguage.create(teacher_id: "27", language_id: "4")
TeachersLanguage.create(teacher_id: "27", language_id: "3")
TeachersLanguage.create(teacher_id: "28", language_id: "1")
TeachersLanguage.create(teacher_id: "28", language_id: "2")
TeachersLanguage.create(teacher_id: "28", language_id: "3")
TeachersLanguage.create(teacher_id: "29", language_id: "5")
TeachersLanguage.create(teacher_id: "29", language_id: "7")
TeachersLanguage.create(teacher_id: "29", language_id: "3")
TeachersLanguage.create(teacher_id: "30", language_id: "9")
TeachersLanguage.create(teacher_id: "30", language_id: "6")
TeachersLanguage.create(teacher_id: "30", language_id: "3")
TeachersLanguage.create(teacher_id: "31", language_id: "1")
TeachersLanguage.create(teacher_id: "31", language_id: "2")
TeachersLanguage.create(teacher_id: "31", language_id: "3")

p "Finished !"
