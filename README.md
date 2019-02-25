# Observer Pattern

### Definition
Observer pattern, defines a one-to-many dependency between objects so that when one object change state, all of its dependents are notified and updated automatically.

### Description
A basic combat system was implemented that lets characters hit each other. For this we need to show characters health and so we need a health bar. When a character takes damage, its health will be decreased and health bar will be updated to show new value. It is not a hard job to just update a health bar. However, if we want to improve our combat system, if we want to add systems related to health like "when health drops below %20, gain speed", we need to check every condition there and it will cause our code to grow, make it unreadable and debugging very difficult.

To make our life easier, observer pattern comes to help us. We just need to make our health observable and subscribe observers like health bar to it. So when health's value changes, it will notify all subscribed observers and they say "Oww health changed, I need to do my job".

Here, we implemented basic observer pattern. However, we don't have to create our own observer and observable interfaces. In every language, they have their own implementations. Also there is programming technique named "Reactive Programming" and it takes this pattern to whole another level. Here is the link http://reactivex.io
