# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

values = ["bundance", "Acceptance", "Accessibility", "Accomplishment", "Accountability", "Accuracy", "Achievement", "Acknowledgement", "Activeness", "Adaptability", "Adoration", "Adroitness", "Advancement", "Adventure", "Affection", "Affluence", "Aggressiveness", "Agility", "Alertness", "Altruism", "Amazement", "Ambition", "Amusement", "Anticipation", "Appreciation", "Approachability", "Approval", "Art", "Articulacy", "Artistry", "Assertiveness", "Assurance", "Attentiveness", "Attractiveness", "Audacity", "Availability", "Awareness", "Awe", "Balance", "Beauty", "Being the best", "Belonging", "Benevolence", "Bliss", "Boldness", "Bravery", "Brilliance", "Buoyancy", "Calmness", "Camaraderie", "Candor", "Capability", "Care", "Carefulness", "Celebrity", "Certainty", "Challenge", "Change", "Charity", "Charm", "Chastity", "Cheerfulness", "Clarity", "Cleanliness", "Clear-mindedness", "Cleverness", "Closeness", "Comfort", "Commitment", "Community", "Compassion", "Competence", "Competition", "Completion", "Composure", "Concentration", "Confidence", "Conformity", "Congruency", "Connection", "Consciousness", "Conservation", "Consistency", "Contentment", "Continuity", "Contribution", "Control", "Conviction", "Conviviality", "Coolness", "Cooperation", "Cordiality", "Correctness", "Country", "Courage", "Courtesy", "Craftiness", "Creativity", "Credibility", "Cunning", "Curiosity", "Daring", "Decisiveness", "Decorum", "Deference", "Delight", "Dependability", "Depth", "Desire", "Determination", "Devotion", "Devoutness", "Dexterity", "Dignity", "Diligence", "Direction", "Directness", "Discipline", "Discovery", "Discretion", "Diversity", "Dominance", "Dreaming", "Drive", "Duty", "Dynamism", "Eagerness", "Ease", "Economy", "Ecstasy", "Education", "Effectiveness", "Efficiency", "Elation", "Elegance", "Empathy", "Encouragement", "Endurance", "Energy", "Enjoyment", "Entertainment", "Enthusiasm", "Environmentalism", "Ethics", "Euphoria", "Excellence", "Excitement", "Exhilaration", "Expectancy", "Expediency", "Experience", "Expertise", "Exploration", "Expressiveness", "Extravagance", "Extroversion", "Exuberance", "Fairness", "Faith", "Fame", "Family", "Fascination", "Fashion", "Fearlessness", "Ferocity", "Fidelity", "Fierceness", "Financial independence", "Firmness", "Fitness", "Flexibility", "Flow", "Fluency", "Focus", "Fortitude", "Frankness", "Freedom", "Friendliness", "Friendship", "Frugality", "Fun", "Gallantry", "Generosity", "Gentility", "Giving", "Grace", "Gratitude", "Gregariousness", "Growth", "Guidance", "Happiness", "Harmony", "Health", "Heart", "Helpfulness", "Heroism", "Holiness", "Honesty", "Honor", "Hopefulness", "Hospitality", "Humility", "Humor", "Hygiene", "Imagination", "Impact", "Impartiality", "Independence", "Individuality", "Industry", "Influence", "Ingenuity", "Inquisitiveness", "Insightfulness", "Inspiration", "Integrity", "Intellect", "Intelligence", "Intensity", "Intimacy", "Intrepidness", "Introspection", "Introversion", "Intuition", "Intuitiveness", "Inventiveness", "Investing", "Involvement", "Joy", "Judiciousness", "Justice", "Keenness", "Kindness", "Knowledge", "Leadership", "Learning", "Liberation", "Liberty", "Lightness", "Liveliness", "Logic", "Longevity", "Love", "Loyalty", "Majesty", "Making a difference", "Marriage", "Mastery", "Maturity", "Meaning", "Meekness", "Mellowness", "Meticulousness", "Mindfulness", "Modesty", "Motivation", "Mysteriousness", "Nature", "Neatness", "Nerve", "Noncomformity", "Obedience", "Open-mindedness", "Openness", "Optimism", "Order", "Organization", "Originality", "Outdoors", "Outlandishness", "Outrageousness", "Partnership", "Patience", "Passion", "Peace", "Perceptiveness", "Perfection", "Perkiness", "Perseverance", "Persistence", "Persuasiveness", "Philanthropy", "Piety", "Playfulness", "Pleasantness", "Pleasure", "Poise", "Polish", "Popularity", "Potency", "Power", "Practicality", "Pragmatism", "Precision", "Preparedness", "Presence", "Pride", "Privacy", "Proactivity", "Professionalism", "Prosperity", "Prudence", "Punctuality", "Purity", "Rationality", "Realism", "Reason", "Reasonableness", "Recognition", "Recreation", "Refinement", "Reflection", "Relaxation", "Reliability", "Relief", "Religiousness", "Reputation", "Resilience", "Resolution", "Resolve", "Resourcefulness", "Respect", "Responsibility", "Rest", "Restraint", "Reverence", "Richness", "Rigor", "Sacredness", "Sacrifice", "Sagacity", "Saintliness", "Sanguinity", "Satisfaction", "Science", "Security", "Self-control", "Selflessness", "Self-reliance", "Self-respect", "Sensitivity", "Sensuality", "Serenity", "Service", "Sexiness", "Sexuality", "Sharing", "Shrewdness", "Significance", "Silence", "Silliness", "Simplicity", "Sincerity", "Skillfulness", "Solidarity", "Solitude", "Sophistication", "Soundness", "Speed", "Spirit", "Spirituality", "Spontaneity", "Spunk", "Stability", "Status", "Stealth", "Stillness", "Strength", "Structure", "Success", "Support", "Supremacy", "Surprise", "Sympathy", "Synergy", "Teaching", "Teamwork", "Temperance", "Thankfulness", "Thoroughness", "Thoughtfulness", "Thrift", "Tidiness", "Timeliness", "Traditionalism", "Tranquility", "Transcendence", "Trust", "Trustworthiness", "Truth", "Understanding", "Unflappability", "Uniqueness", "Unity", "Usefulness", "Utility", "Valor", "Variety ", "Victory", "Vigor", "Virtue", "Vision", "Vitality", "Vivacity", "Volunteering", "Warmheartedness", "Warmth", "Watchfulness", "Wealth", "Willfulness", "Willingness", "Winning", "Wisdom", "Wittiness", "Wonder", "Worthiness", "Youthfulness", "Zeal"]

values.each {|value| Value.create(word: value.downcase)}

User.create(first_name: "Hailey", last_name: "Ryu", email: "a@a.com", password: "a", bio: Faker::Lorem.paragraph)
User.create(first_name: "Pearl", last_name: "Shin", email: "ps@a.com", password: "a", bio: Faker::Lorem.paragraph)
User.create(first_name: "Jon", last_name: "Cho", email: "jc@a.com", password: "a", bio: Faker::Lorem.paragraph)
User.create(first_name: "Dionne", last_name: "Stanfield", email: "ds@a.com", password: "a", bio: Faker::Lorem.paragraph)

20.times { User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "a", bio: Faker::Lorem.paragraph) }


177.times { Friendship.find_or_create_by(user_id: rand(1..10), friend_id: rand(1..10)) }


77.times {
  u_id = rand(1..10)
  v_id = rand(1..values.length)
  us = UserValue.find_by(user_id: u_id, value_id: v_id)
  if us
    new_count = us.count+1
    us.update(count: new_count)
  else
    UserValue.create(user_id: u_id, value_id: v_id, count: 0)
  end
}
