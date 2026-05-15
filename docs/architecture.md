# Arquitetura

- Backend orientado a módulos (auth, users, workouts, nutrition, OCR, AI, sync).
- PostgreSQL para persistência principal; Redis para cache, rate-limit state e fila de sync.
- Socket.io para sincronização near real-time Web ↔ Mobile.
- OCR: Tesseract.js primário com fallback Google Vision.
- AI Services: GoalPredictionService, NutritionOptimizationService, PatternAnalysisService, RecommendationEngine.
