.class public final Lcom/paypal/android/sdk/fk;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/view/ViewGroup;

.field private b:Landroid/view/ViewGroup;

.field private c:Lcom/paypal/android/sdk/fq;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Lcom/paypal/android/sdk/fp;

.field private j:Lcom/paypal/android/sdk/fd;

.field private k:Lcom/paypal/android/sdk/fq;

.field private l:Lcom/paypal/android/sdk/fv;

.field private m:Lcom/paypal/android/sdk/fv;

.field private n:Lcom/paypal/android/sdk/fm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/paypal/android/sdk/cb;->a(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fk;->b:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->b:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fk;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->d:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/ViewGroup;)Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    const-string v2, "0dip"

    const-string v3, "0dip"

    const-string v4, "0dip"

    const-string v5, "14dip"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    sget v2, Lcom/paypal/android/sdk/ca;->a:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    invoke-static {v1, v6, v6}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    new-instance v1, Lcom/paypal/android/sdk/fq;

    const-string v2, "description"

    invoke-direct {v1, p1, v2}, Lcom/paypal/android/sdk/fq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    iget-object v1, v1, Lcom/paypal/android/sdk/fq;->d:Landroid/widget/TextView;

    sget-object v2, Lcom/paypal/android/sdk/ca;->r:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    iget-object v1, v1, Lcom/paypal/android/sdk/fq;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    iget-object v1, v1, Lcom/paypal/android/sdk/fq;->a:Landroid/widget/TableLayout;

    invoke-static {v1}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    if-eqz p2, :cond_0

    new-instance v1, Lcom/paypal/android/sdk/fm;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/fm;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->n:Lcom/paypal/android/sdk/fm;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->n:Lcom/paypal/android/sdk/fm;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/fm;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    new-instance v1, Lcom/paypal/android/sdk/fv;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/fv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/fv;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    new-instance v1, Lcom/paypal/android/sdk/fv;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/fv;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    new-instance v2, Lcom/paypal/android/sdk/fr;

    invoke-direct {v2}, Lcom/paypal/android/sdk/fr;-><init>()V

    invoke-virtual {v1, p1, v2}, Lcom/paypal/android/sdk/fv;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fu;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/fv;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    const v2, 0xa7fa

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/paypal/android/sdk/cb;->b(Landroid/widget/TextView;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-static {v1, v2, v6}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    const-string v2, "20dip"

    const-string v3, "10dip"

    invoke-static {v1, v7, v2, v7, v3}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    const v2, 0xa7f9

    invoke-static {p1, v1, v2, v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/content/Context;ZILandroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fk;->f:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    const-string v1, "init"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/paypal/android/sdk/fd;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/fd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fk;->j:Lcom/paypal/android/sdk/fd;

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->d:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->j:Lcom/paypal/android/sdk/fd;

    iget-object v1, v1, Lcom/paypal/android/sdk/fd;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->j:Lcom/paypal/android/sdk/fd;

    iget-object v0, v0, Lcom/paypal/android/sdk/fd;->a:Landroid/widget/LinearLayout;

    invoke-static {v0, v6, v6}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->j:Lcom/paypal/android/sdk/fd;

    iget-object v0, v0, Lcom/paypal/android/sdk/fd;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;IF)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->b:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/paypal/android/sdk/fk;->a:Landroid/view/ViewGroup;

    return-void

    :cond_0
    new-instance v1, Lcom/paypal/android/sdk/fp;

    invoke-direct {v1, p1}, Lcom/paypal/android/sdk/fp;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->i:Lcom/paypal/android/sdk/fp;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->i:Lcom/paypal/android/sdk/fp;

    iget-object v1, v1, Lcom/paypal/android/sdk/fp;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->i:Lcom/paypal/android/sdk/fp;

    iget-object v1, v1, Lcom/paypal/android/sdk/fp;->a:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;)V

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    new-instance v1, Lcom/paypal/android/sdk/fq;

    const-string v2, "00 / 0000"

    invoke-direct {v1, p1, v2}, Lcom/paypal/android/sdk/fq;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fk;->k:Lcom/paypal/android/sdk/fq;

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->k:Lcom/paypal/android/sdk/fq;

    iget-object v1, v1, Lcom/paypal/android/sdk/fq;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fk;->k:Lcom/paypal/android/sdk/fq;

    iget-object v1, v1, Lcom/paypal/android/sdk/fq;->a:Landroid/widget/TableLayout;

    invoke-static {v1}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->a:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/paypal/android/sdk/fe;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v0, p1, p2}, Lcom/paypal/android/sdk/fv;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fu;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/paypal/android/sdk/fr;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v0, p1, p2}, Lcom/paypal/android/sdk/fv;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fu;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/text/SpannableString;)V
    .locals 2

    invoke-static {p1}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->g:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->n:Lcom/paypal/android/sdk/fm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->n:Lcom/paypal/android/sdk/fm;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/fm;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->n:Lcom/paypal/android/sdk/fm;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/fm;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->i:Lcom/paypal/android/sdk/fp;

    iget-object v0, v0, Lcom/paypal/android/sdk/fp;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->i:Lcom/paypal/android/sdk/fp;

    iget-object v0, v0, Lcom/paypal/android/sdk/fp;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->k:Lcom/paypal/android/sdk/fq;

    iget-object v0, v0, Lcom/paypal/android/sdk/fq;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    iget-object v0, v0, Lcom/paypal/android/sdk/fq;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    iget-object v0, v0, Lcom/paypal/android/sdk/fq;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/paypal/android/sdk/cd;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fb;->a:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->n:Lcom/paypal/android/sdk/fm;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fm;->b()V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fb;->E:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fb;->C:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->i:Lcom/paypal/android/sdk/fp;

    iget-object v0, v0, Lcom/paypal/android/sdk/fp;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->k:Lcom/paypal/android/sdk/fq;

    iget-object v0, v0, Lcom/paypal/android/sdk/fq;->a:Landroid/widget/TableLayout;

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->k:Lcom/paypal/android/sdk/fq;

    iget-object v0, v0, Lcom/paypal/android/sdk/fq;->d:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ah:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public final b()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->c:Lcom/paypal/android/sdk/fq;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fq;->a()V

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/fv;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final d()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->j:Lcom/paypal/android/sdk/fd;

    iget-object v0, v0, Lcom/paypal/android/sdk/fd;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/fv;->a(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final e()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->l:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fv;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fk;->m:Lcom/paypal/android/sdk/fv;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fv;->a()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
