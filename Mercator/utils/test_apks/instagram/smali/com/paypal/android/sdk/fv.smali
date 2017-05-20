.class public final Lcom/paypal/android/sdk/fv;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/16 v8, 0x53

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fv;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->c:Landroid/widget/ImageView;

    const/16 v1, 0x8fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->c:Landroid/widget/ImageView;

    const-string v1, "35dip"

    const-string v2, "35dip"

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->c:Landroid/widget/ImageView;

    const-string v1, "4dip"

    invoke-static {v0, v4, v1, v4, v4}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAATZJREFUeNrsmMENgkAQRVnPUoAWQB0WoAVoAViA3tW7FEADUIDebUAaoAELwDv+TcaEkFUOsDhj5ieTTdgQ5jHLZ3aDQKVSqVSqAVTX9Q4RSUw8RKSIO+KGmI/5fNMzeZvsGdF88yVia4ypxgCY9Lx/ipi1rkUExb8CVIXFh4SvqMKRPQBBrDAcHFMJIHL2AG8XwrB2TJ0AcWEPQBB2ySwdUxtAlBIAQgxpy5WsKnKmkjVAAyJzuJMXezU+ykp/ZFuJsA0BgA17gAZE5ttevQF02GsOiIQ9AEHEGGJf9uodoMNe7UddsAcgiMyHvU4C4dIl9NcfsWgbFf0jE91KiG7mxLfTojc0oreUojf1oo9VvthlgeS3Y7QpfZu5J+LhsMu9mG7w14e7Q4LIPF5XqVQqlWi9BBgAacm2vqgEoPIAAAAASUVORK5CYII="

    const-string v1, "go to selection"

    invoke-static {p1, v0, v1}, Lcom/paypal/android/sdk/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/paypal/android/sdk/fv;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->d:Landroid/widget/ImageView;

    const/16 v1, 0x900

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->d:Landroid/widget/ImageView;

    sget v1, Lcom/paypal/android/sdk/ca;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    const-string v0, "20dip"

    const-string v1, "20dip"

    const/16 v2, 0xb

    invoke-static {p1, v0, v1, v2}, Lcom/paypal/android/sdk/cb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/paypal/android/sdk/fv;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/paypal/android/sdk/cb;->d(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    const/16 v1, 0x8fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    const/16 v0, 0x8fd

    invoke-static {v5, v5, v7, v0}, Lcom/paypal/android/sdk/cb;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x900

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    const-string v1, "6dip"

    invoke-static {v0, v1, v4, v4, v4}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x902

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v1, 0x8fd

    invoke-static {v5, v5, v7, v1}, Lcom/paypal/android/sdk/cb;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    const/4 v2, 0x3

    const/16 v3, 0x8fe

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x900

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v2, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lcom/paypal/android/sdk/cb;->b(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    const-string v2, "6dip"

    invoke-static {v1, v2, v4, v4, v4}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    const/16 v2, 0x901

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    invoke-static {v1, v8}, Lcom/paypal/android/sdk/cb;->d(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    const-string v1, "6dip"

    invoke-static {v0, v1, v4, v4, v4}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    const/16 v1, 0x903

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    invoke-static {v0, v8}, Lcom/paypal/android/sdk/cb;->c(Landroid/widget/TextView;I)V

    const/16 v0, 0x8fd

    invoke-static {v5, v5, v7, v0}, Lcom/paypal/android/sdk/cb;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x902

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0x900

    invoke-virtual {v0, v6, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/paypal/android/sdk/fv;->b:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fb;->av:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    const-string v1, "6dip"

    invoke-static {v0, v1, v4, v4, v4}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/paypal/android/sdk/cb;->a(Landroid/widget/LinearLayout;)Landroid/view/View;

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Lcom/paypal/android/sdk/fu;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, -0x2

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->c:Landroid/widget/ImageView;

    invoke-interface {p2}, Lcom/paypal/android/sdk/fu;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/cb;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/paypal/android/sdk/fu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->e:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/paypal/android/sdk/fu;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/paypal/android/sdk/fu;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    invoke-static {v0, v2, v3}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->g:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-interface {p2}, Lcom/paypal/android/sdk/fu;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->h:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/fv;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
