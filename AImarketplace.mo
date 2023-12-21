// AImarketplace.mo

module AImarketplace {
  type AIService = {
    owner : Principal;
    model : Text;
    price : Nat;
  };

  public type AImarketplace = {
    registerService : (model : Text, price : Nat) -> async ();
    getServices : () -> async [AIService];
    purchaseService : (serviceIndex : Nat) -> async ();
  };

  public var aiservices : [AIService] = [];

  public public func registerService(model : Text, price : Nat) : async () {
    let service : AIService = { owner = Principal.self; model = model; price = price };
    aiservices := Array.append<aiservices, AIService>(aiservices, [service]);
  };

  public query func getServices() : async [AIService] {
    return aiservices;
  };

  public public func purchaseService(serviceIndex : Nat) : async () {
    if (serviceIndex < Array.length(aiservices)) {
      let service = aiservices[serviceIndex];
      // Logika pembayaran disini
      // Transfer token ICP dari pembeli ke pemilik layanan
    } else {
      assert(false, "Indeks layanan tidak valid");
    };
  };
};
