# A Portfolio Website - Flutter Web


## ✅ Here's the Correct Way to Push Flutter Web to `gh-pages`

### 🔁 Option 1: Deploy using a temporary `gh-pages` commit (manual process)

---

### 📌 Step-by-Step (Safe & Clean)

#### ✅ 1. Make sure `build/web` is updated

```bash
flutter build web
```

---

#### ✅ 2. Switch to `gh-pages` branch

```bash
git checkout gh-pages
```

---

#### ✅ 3. Clean the branch (remove old files)

```bash
git rm -rf .
```

> This will stage all files for deletion.

---

#### ✅ 4. Copy the contents of `build/web` to root

From your project root:

```bash
cp -r build/web/* ./
```

---

#### ✅ 5. Add and commit the changes

```bash
git add .
git commit -m "Deploy Flutter Web to GitHub Pages"
```

---

#### ✅ 6. Push the branch

```bash
git push origin gh-pages --force
```

---

#### ✅ 7. Switch back to `main`

```bash
git checkout main
```

---

### 🔗 Result:

Your site will now be live at:

```
https://<your-username>.github.io/<repo-name>/
```

---

## 🧠 Tip: Use `.nojekyll`

If you're using Flutter and you find assets (like fonts or files in `/assets/`) not loading, create a `.nojekyll` file at the root of `gh-pages`:

```bash
touch .nojekyll
```

Then:

```bash
git add .nojekyll
git commit -m "Add .nojekyll to bypass Jekyll"
git push origin gh-pages --force
```
