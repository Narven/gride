deploy:
  flutter build web --release && fly deploy --remote-only
