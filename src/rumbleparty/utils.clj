(ns rumbleparty.utils)

(defprotocol Serializable
  "Allow stuff to be serialized"
  (serialize [data] "implementation to serialize the data")
  (deserialize [data] "implementation to deserialize the data")
)

(defn print-hello [name]
  (println name)
)

(defn -main [& args]
  (print-hello "Jin")
)
