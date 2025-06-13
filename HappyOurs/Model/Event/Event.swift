//
//  Event.swift
//  HappyOurs
//
//  Created by Sébastien Daguin on 29/05/2025.
//

import Foundation

struct Event: Identifiable, Equatable, Hashable  {
    
    static func == (lhs: Event, rhs: Event) -> Bool {
        lhs.name == rhs.name && lhs.organisator == rhs.organisator
    }
    
    var id: UUID = UUID()
    var organisator: Business
    var name: String
    var date: Date
    var imageEventName: String?
    var imageNames: [String] = []
    var participants: [User] = []
    var bestCocktail: Cocktail
    var typeOfEvent: TypeOfEvent = .club
    var address: String = ""
    var description: String = ""
    
    var dateFormatted: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "fr_FR")
        formatter.dateFormat = "EEEE d MMMM 'à' HH'h'mm"
        return formatter.string(from: date)
    }
    
    enum TypeOfEvent: String, CaseIterable {
        case concert
        case club
        case festival
        case degustation
        case openAir
        case classic
        
        var name : String {
            switch self{
            case.concert: return "Concert 🎤"
            case.club: return "Club 🪩"
            case.festival: return "Festival 🎉 "
            case.degustation: return "Dégustation 😋"
            case.openAir: return "Open Air ☀️"
            case.classic: return "Classique 🎻"
            }
        }
        
        var descriptionCategorie: String{
            switch self{
            case.concert: return "Sur scène 🎤"
            case.club: return "Allons danser 🪩"
            case.festival: return "Faire la fête 🎉 "
            case.degustation: return "Expérience culinaire 😋"
            case.openAir: return "En plein air ☀️"
            case.classic: return "Concertos classiques 🎻"
            }
        }
        
    }
    
    
    static var defaultEvent: Event {
        var event = Event(organisator: .preview, name: "Tropical Summer", date: Date.now, bestCocktail: .preview )
        event.imageEventName = "event-4"
        event.address = "3 Rte de Longjumeau, 91380 Chilly-Mazarin"
        event.participants = DatabaseParticipants.participantData + DatabaseParticipants.participantData
        event.description =
        """
Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
"""
        return event
    }
    
    static let allEvents: [Event] = [
        // 🎤 Concert
        Event(organisator: .preview, name: "Soirée Détente", date: Date(), imageEventName: "event-1", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[0], typeOfEvent: .concert, address: "10 Rue des Amis, Paris"),
        Event(organisator: .preview, name: "Jazz & Chill", date: Date().addingTimeInterval(86400 * 5), imageEventName: "event-2", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[1], typeOfEvent: .concert, address: "8 Rue du Jazz, Lyon"),
        Event(organisator: .preview, name: "Rock Live", date: Date().addingTimeInterval(86400 * 10), imageEventName: "event-3", participants: [Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[2], typeOfEvent: .concert, address: "42 Avenue du Son, Lille"),

        // 🪩 Club
        Event(organisator: .preview, name: "Night Vibes", date: Date().addingTimeInterval(86400 * 2), imageEventName: "event-4", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan")], bestCocktail: Cocktail.cocktailDb[3], typeOfEvent: .club, address: "99 Rue de la Nuit, Marseille"),
        Event(organisator: .preview, name: "Dance Floor Fever", date: Date().addingTimeInterval(86400 * 7), imageEventName: "event-1", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise")], bestCocktail: Cocktail.cocktailDb[4], typeOfEvent: .club, address: "66 Boulevard Clubbing, Toulouse"),
        Event(organisator: .preview, name: "Electro Pulse", date: Date().addingTimeInterval(86400 * 12), imageEventName: "event-2", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[0], typeOfEvent: .club, address: "17 Allée Électro, Paris"),

        // 🎉 Festival
        Event(organisator: .preview, name: "Brunch du Dimanche", date: Date().addingTimeInterval(86400 * 3), imageEventName: "event-3", participants: [Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[3], typeOfEvent: .festival, address: "19 Quai des Gourmands, Marseille"),
        Event(organisator: .preview, name: "Color Festival", date: Date().addingTimeInterval(86400 * 8), imageEventName: "event-4", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[2], typeOfEvent: .festival, address: "Esplanade des Fêtes, Montpellier"),
        Event(organisator: .preview, name: "Street Art Fest", date: Date().addingTimeInterval(86400 * 13), imageEventName: "event-1", participants: [Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[1], typeOfEvent: .festival, address: "Rue des Arts, Bordeaux"),

        // 😋 Dégustation
        Event(organisator: .preview, name: "Atelier Créatif", date: Date().addingTimeInterval(86400 * 1), imageEventName: "event-2", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[1], typeOfEvent: .degustation, address: "42 Avenue des Arts, Lyon"),
        Event(organisator: .preview, name: "Soirée Mixologie", date: Date().addingTimeInterval(86400 * 6), imageEventName: "event-3", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[0], typeOfEvent: .degustation, address: "11 Rue du Goût, Dijon"),
        Event(organisator: .preview, name: "Tasting Tour", date: Date().addingTimeInterval(86400 * 11), imageEventName: "event-4", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline")], bestCocktail: Cocktail.cocktailDb[4], typeOfEvent: .degustation, address: "Place de la Gourmandise, Nantes"),

        // ☀️ Open Air
        Event(organisator: .preview, name: "Rencontre Locale", date: Date().addingTimeInterval(86400 * 4), imageEventName: "event-1", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise")], bestCocktail: Cocktail.cocktailDb[2], typeOfEvent: .openAir, address: "Place du Marché, Toulouse"),
        Event(organisator: .preview, name: "Picnic Party", date: Date().addingTimeInterval(86400 * 9), imageEventName: "event-2", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[3], typeOfEvent: .openAir, address: "Parc des Cèdres, Lyon"),
        Event(organisator: .preview, name: "Beach Vibes", date: Date().addingTimeInterval(86400 * 14), imageEventName: "event-3", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[1], typeOfEvent: .openAir, address: "Plage du Soleil, Nice"),

        // 🎻 Classique
        Event(organisator: .preview, name: "Lancement d'App", date: Date().addingTimeInterval(86400 * 5), imageEventName: "event-2", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Jessica Martin", email: "lina.dev@simplon.co", ville: "Créteil", currentImageName: "Jessica"),Participant(username: "Matthew Bowl", email: "rayan.ux@simplon.co", ville: "Saint-Denis", currentImageName: "Matthew"),Participant(username: "Lise Navarro", email: "emma.react@simplon.co", ville: "Cachan", currentImageName: "Lise"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[2], typeOfEvent: .classic, address: "12 Rue du Code, Nice"),
        Event(organisator: .preview, name: "Classique au Château", date: Date().addingTimeInterval(86400 * 10), imageEventName: "event-4", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan"),Participant(username: "Brianna Wallace", email: "nadia.swift@simplon.co", ville: "Noisy-le-Grand", currentImageName: "Brianna")], bestCocktail: Cocktail.cocktailDb[0], typeOfEvent: .classic, address: "Château de Musique, Versailles"),
        Event(organisator: .preview, name: "Piano & Lumières", date: Date().addingTimeInterval(86400 * 15), imageEventName: "event-1", participants: [Participant(username: "Caroline Payet", email: "caro.94@simplon.co", ville: "Vincennes", currentImageName: "Caroline"), Participant(username: "Jeremy Parot", email: "julien.web@simplon.co", ville: "Montreuil", currentImageName: "Jeremy"), Participant(username: "Sophie Caron", email: "sophie.code@simplon.co", ville: "Pantin", currentImageName: "Emilie"), Participant(username: "Stan Colman", email: "mickael.js@simplon.co", ville: "Ivry-sur-Seine", currentImageName: "Stan")], bestCocktail: Cocktail.cocktailDb[1], typeOfEvent: .classic, address: "Opéra National, Paris")
    ]
}
