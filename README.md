How to get errors:
- Run npm i
- Open typespec terminal output and restart typespec server to see it crashed
- Run npx tsp compile main.tsp to see an error about duplicate values (I left it in there because I did not know if it was related)
- If you comment out line 6 in main.tsp it seems as everything is fast as expected

Note: It looks like that if there is an error somewhere in a tsp file, that everything is fast. This causes us to expect we cause some infinite loop that we are not aware of.
