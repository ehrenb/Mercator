.class public final Lcom/paypal/android/sdk/ft;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/view/ViewGroup;

.field public b:Landroid/widget/TextView;

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/16 v9, 0x11

    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->c:Landroid/view/ViewGroup;

    sget v1, Lcom/paypal/android/sdk/ca;->d:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->e:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->e:Landroid/widget/RelativeLayout;

    const-string v1, "16dip"

    const-string v2, "20dip"

    const-string v3, "16dip"

    const-string v4, "20dip"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/paypal/android/sdk/ft;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v8, v8}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->e:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    invoke-static {v0, v6, v6}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    const-string v1, "10dip"

    invoke-static {v0, v5, v5, v1, v5}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->f:Landroid/widget/ImageView;

    const-string v1, "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"

    invoke-static {v1, p1}, Lcom/paypal/android/sdk/cb;->c(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/ft;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->f:Landroid/widget/ImageView;

    const-string v1, "220dip"

    const-string v2, "160dip"

    invoke-static {v0, v1, v2}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->f:Landroid/widget/ImageView;

    const-string v1, "30dip"

    invoke-static {v0, v5, v5, v5, v1}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->d:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/ft;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->d:Landroid/widget/ProgressBar;

    invoke-static {v0, v6, v6}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->d:Landroid/widget/ProgressBar;

    const-string v1, "10dip"

    invoke-static {v0, v5, v5, v5, v1}, Lcom/paypal/android/sdk/cb;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->d:Landroid/widget/ProgressBar;

    invoke-static {v0, v9, v7}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;IF)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/ca;->t:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    sget v1, Lcom/paypal/android/sdk/ca;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    invoke-static {v0, v6, v6}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->b:Landroid/widget/TextView;

    invoke-static {v0, v9, v7}, Lcom/paypal/android/sdk/cb;->a(Landroid/view/View;IF)V

    iget-object v0, p0, Lcom/paypal/android/sdk/ft;->c:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/paypal/android/sdk/ft;->a:Landroid/view/ViewGroup;

    return-void
.end method
