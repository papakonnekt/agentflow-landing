# Deploying AgentFlow Landing Page to Vercel

## Quick Deploy (3 minutes)

### Step 1: Install Vercel CLI
```bash
npm i -g vercel
```

### Step 2: Login to Vercel
```bash
vercel login
```

### Step 3: Deploy
```bash
cd ventures/agentflow-automation/landing-page
vercel --prod
```

## Configuration

### vercel.json (Already Created)
This tells Vercel how to serve the static files.

### Environment Variables (Optional)
If you want to add analytics later:
```bash
vercel env add GA_TRACKING_ID
```

## Custom Domain

### Step 1: Add Domain in Vercel Dashboard
1. Go to vercel.com/dashboard
2. Select your project
3. Click "Settings" → "Domains"
4. Add your domain (e.g., agentflowautomation.com)

### Step 2: Update DNS
Add these records at your domain registrar:
```
Type: A
Name: @
Value: 76.76.21.21

Type: CNAME
Name: www
Value: cname.vercel-dns.com
```

## Post-Deploy Checklist

- [ ] Landing page loads correctly
- [ ] All images load
- [ ] Calendly booking link works
- [ ] Payment buttons (once Stripe is live)
- [ ] Mobile responsive test
- [ ] Page speed test (use Lighthouse)

## Updating the Site

After making changes:
```bash
cd ventures/agentflow-automation/landing-page
vercel --prod
```

## Free Tier Limits
- 100GB bandwidth/month
- 6,000 build minutes/month
- Perfect for landing pages

---

**Status:** Ready to deploy  
**Next:** Run `vercel --prod` to go live
