// main.ts

import { AImarketplace } from 'AImarketplace';

async function main() {
  // Inisialisasi Internet Computer Agent
  const agent = new AImarketplace.AImarketplace();

  // Registrasi layanan AI
  await agent.registerService("Model1", 10);

  // Mendapatkan daftar layanan
  const services = await agent.getServices();
  console.log("Daftar Layanan AI:", services);

  // Membeli layanan pertama
  await agent.purchaseService(0);
}

main();