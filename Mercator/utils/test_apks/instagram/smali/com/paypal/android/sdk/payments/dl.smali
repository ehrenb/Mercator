.class abstract Lcom/paypal/android/sdk/payments/dl;
.super Landroid/app/Activity;


# static fields
.field private static final d:Ljava/lang/String;

.field private static final l:Ljava/util/Map;


# instance fields
.field protected a:Lcom/paypal/android/sdk/payments/PayPalService;

.field protected b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

.field protected c:Lcom/paypal/android/sdk/fc;

.field private e:Z

.field private f:Lcom/paypal/android/sdk/payments/di;

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lcom/paypal/android/sdk/payments/du;

.field private final k:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/payments/dl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    new-instance v0, Lcom/paypal/android/sdk/payments/dn;

    invoke-direct {v0}, Lcom/paypal/android/sdk/payments/dn;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/payments/dl;->l:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Lcom/paypal/android/sdk/payments/dt;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/payments/dt;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->k:Landroid/content/ServiceConnection;

    return-void
.end method

.method private a(ILcom/paypal/android/sdk/payments/PayPalAuthorization;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.paypal.android.sdk.authorization"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Lcom/paypal/android/sdk/payments/dl;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V
    .locals 8

    const/4 v7, 0x0

    new-instance v6, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_1

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-virtual {v6, v7, v0, v1}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v1, v0

    if-lez v1, :cond_0

    aget-object v1, v0, v7

    new-instance v0, Lcom/paypal/android/sdk/payments/b;

    const-class v3, Lcom/paypal/android/sdk/payments/FuturePaymentInfoActivity;

    new-instance v4, Lcom/paypal/android/sdk/payments/dm;

    invoke-direct {v4, p0}, Lcom/paypal/android/sdk/payments/dm;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    move-object v2, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/paypal/android/sdk/payments/b;-><init>(Landroid/text/style/URLSpan;Landroid/app/Activity;Ljava/lang/Class;Lcom/paypal/android/sdk/payments/bb;Lcom/paypal/android/sdk/payments/i;)V

    invoke-virtual {v6, v1}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v6, v1}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v6, v0, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v6, v1}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    new-instance v0, Landroid/text/style/BulletSpan;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v6, v0, v7, v1, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x64

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x64

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-direct {p0, v6}, Lcom/paypal/android/sdk/payments/dl;->a(Landroid/text/SpannableString;)V

    goto :goto_0
.end method

.method private a(Landroid/text/SpannableString;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v4, Lcom/paypal/android/sdk/payments/eb;

    new-instance v5, Lcom/paypal/android/sdk/payments/do;

    invoke-direct {v5, p0}, Lcom/paypal/android/sdk/payments/do;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    invoke-direct {v4, v3, v5}, Lcom/paypal/android/sdk/payments/eb;-><init>(Landroid/text/style/URLSpan;Lcom/paypal/android/sdk/payments/bb;)V

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lcom/paypal/android/sdk/payments/di;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/di;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/cj;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/di;->b:Lcom/paypal/android/sdk/dx;

    iput-object v1, v0, Lcom/paypal/android/sdk/cj;->e:Lcom/paypal/android/sdk/dx;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    iget-object v1, p1, Lcom/paypal/android/sdk/payments/di;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/paypal/android/sdk/cj;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->j()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->k()V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/dl;Lcom/paypal/android/sdk/eb;)V
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0, p1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/eb;)V

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/payments/dl;Lcom/paypal/android/sdk/ek;)V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/payments/du;

    invoke-direct {v0, p1}, Lcom/paypal/android/sdk/payments/du;-><init>(Lcom/paypal/android/sdk/ek;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.ppAppInfo"

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->f()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->k()V

    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/text/SpannableString;)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/text/SpannableString;->length()I

    move-result v0

    const-class v2, Landroid/text/style/URLSpan;

    invoke-virtual {p1, v1, v0, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    new-instance v4, Lcom/paypal/android/sdk/payments/eb;

    new-instance v5, Lcom/paypal/android/sdk/payments/dp;

    invoke-direct {v5, p0}, Lcom/paypal/android/sdk/payments/dp;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    invoke-direct {v4, v3, v5}, Lcom/paypal/android/sdk/payments/eb;-><init>(Landroid/text/style/URLSpan;Lcom/paypal/android/sdk/payments/bb;)V

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v3}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->i()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->showDialog(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->i()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token is expired, get new one. AccessToken: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/cj;->b:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v1, Lcom/paypal/android/sdk/payments/dq;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dq;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/payments/bh;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->p()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->e()V

    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/cd;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->k:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/paypal/android/sdk/payments/dl;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->e:Z

    return-void
.end method

.method static synthetic d(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".postBindSetup()"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".startLoginIfNeeded (access token: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v3

    iget-object v3, v3, Lcom/paypal/android/sdk/cj;->g:Lcom/paypal/android/sdk/dv;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->j()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->h:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -- doing the login..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/dl;->h:Z

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->e()V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-boolean v4, p0, Lcom/paypal/android/sdk/payments/dl;->i:Z

    if-eqz v4, :cond_0

    iput-boolean v2, p0, Lcom/paypal/android/sdk/payments/dl;->i:Z

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->j()V

    :cond_0
    iget-boolean v2, p0, Lcom/paypal/android/sdk/payments/dl;->g:Z

    if-nez v2, :cond_1

    iput-boolean v1, p0, Lcom/paypal/android/sdk/payments/dl;->g:Z

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v2, Lcom/paypal/android/sdk/eb;->q:Lcom/paypal/android/sdk/eb;

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/eb;)V

    :cond_1
    iget-object v1, v3, Lcom/paypal/android/sdk/fc;->f:Lcom/paypal/android/sdk/fd;

    iget-object v1, v1, Lcom/paypal/android/sdk/fd;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    new-instance v2, Lcom/paypal/android/sdk/payments/dr;

    invoke-direct {v2, p0}, Lcom/paypal/android/sdk/payments/dr;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    invoke-virtual {v1, v2}, Lcom/paypal/android/sdk/payments/PayPalService;->b(Lcom/paypal/android/sdk/payments/be;)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->f()V

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->c()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private e()V
    .locals 7

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".doLogin"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-static {p0, v0}, Lcom/paypal/android/sdk/payments/dj;->a(Landroid/content/Context;Lcom/paypal/android/sdk/payments/PayPalService;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/paypal/android/sdk/cs;

    invoke-direct {v0}, Lcom/paypal/android/sdk/cs;-><init>()V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->k()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/paypal/android/sdk/ct;->b:Lcom/paypal/android/sdk/ct;

    sget-object v3, Lcom/paypal/android/sdk/cu;->b:Lcom/paypal/android/sdk/cu;

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalService;->b()Lcom/paypal/android/sdk/as;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/as;->d()Lcom/paypal/android/sdk/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/paypal/android/sdk/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/cs;->a(Ljava/lang/String;Lcom/paypal/android/sdk/ct;Lcom/paypal/android/sdk/cu;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startActivityForResult("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "paypal.sdk"

    const-string v2, "requesting code with scope=null from Authenticator."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/paypal/android/sdk/payments/dl;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v6

    move-object v0, p0

    move v3, v1

    invoke-static/range {v0 .. v6}, Lcom/paypal/android/sdk/payments/LoginActivity;->a(Landroid/app/Activity;ILcom/paypal/android/sdk/dl;ZZLjava/lang/String;Lcom/paypal/android/sdk/payments/PayPalConfiguration;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/eb;->s:Lcom/paypal/android/sdk/eb;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/eb;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->finish()V

    return-void
.end method

.method private f()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->l()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/du;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/du;->d()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->m()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/du;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/du;->b()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->n()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/du;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/du;->c()Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-object v3, Lcom/paypal/android/sdk/fb;->V:Lcom/paypal/android/sdk/fb;

    invoke-static {v3}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v9, "<b>"

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "</b>"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-boolean v3, Lcom/paypal/android/sdk/ez;->a:Z

    if-eqz v3, :cond_10

    const-string v3, "\u200f"

    :goto_1
    iget-object v7, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v7, v7, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v7, v7, v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v4, Lcom/paypal/android/sdk/ez;->a:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v4, v4, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    const/4 v7, 0x5

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V

    :cond_5
    iget-object v4, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v4, v4, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v4, v4, v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/paypal/android/sdk/payments/dl;->b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v7

    sget-object v4, Lcom/paypal/android/sdk/l;->a:Lcom/paypal/android/sdk/l;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/l;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/paypal/android/sdk/cm;->b:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v4, Lcom/paypal/android/sdk/cm;->c:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v4}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    :cond_6
    sget-object v4, Lcom/paypal/android/sdk/fb;->Y:Lcom/paypal/android/sdk/fb;

    invoke-static {v4}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v4

    new-array v9, v13, [Ljava/lang/Object;

    const-string v10, "future-payment-consent"

    aput-object v10, v9, v8

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<b>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</b>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<b>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</b>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/paypal/android/sdk/payments/i;->a:Lcom/paypal/android/sdk/payments/i;

    invoke-direct {p0, v5, v4, v3, v9}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    move v4, v6

    :goto_2
    sget-object v9, Lcom/paypal/android/sdk/cm;->a:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v9}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/paypal/android/sdk/fb;->X:Lcom/paypal/android/sdk/fb;

    invoke-static {v9}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v9, v3, v12}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_7
    sget-object v9, Lcom/paypal/android/sdk/cm;->d:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v9}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    sget-object v9, Lcom/paypal/android/sdk/fb;->W:Lcom/paypal/android/sdk/fb;

    invoke-static {v9}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/paypal/android/sdk/payments/i;->b:Lcom/paypal/android/sdk/payments/i;

    invoke-direct {p0, v4, v9, v3, v10}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_8
    sget-object v9, Lcom/paypal/android/sdk/cm;->e:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v9}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/paypal/android/sdk/fb;->ac:Lcom/paypal/android/sdk/fb;

    invoke-static {v9}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v8

    aput-object v0, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/paypal/android/sdk/payments/i;->c:Lcom/paypal/android/sdk/payments/i;

    invoke-direct {p0, v4, v9, v3, v10}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_9
    sget-object v9, Lcom/paypal/android/sdk/cm;->f:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v9}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Lcom/paypal/android/sdk/fb;->ab:Lcom/paypal/android/sdk/fb;

    invoke-static {v9}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    const-string v11, ""

    aput-object v11, v10, v8

    aput-object v0, v10, v5

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/paypal/android/sdk/payments/i;->d:Lcom/paypal/android/sdk/payments/i;

    invoke-direct {p0, v4, v9, v3, v10}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_a
    sget-object v9, Lcom/paypal/android/sdk/cm;->g:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v9}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    sget-object v9, Lcom/paypal/android/sdk/fb;->Z:Lcom/paypal/android/sdk/fb;

    invoke-static {v9}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v9, v3, v12}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_b
    sget-object v9, Lcom/paypal/android/sdk/cm;->h:Lcom/paypal/android/sdk/cm;

    invoke-virtual {v9}, Lcom/paypal/android/sdk/cm;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    sget-object v9, Lcom/paypal/android/sdk/fb;->U:Lcom/paypal/android/sdk/fb;

    invoke-static {v9}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v4, v9, v3, v12}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_c
    sget-object v9, Lcom/paypal/android/sdk/l;->h:Ljava/util/Collection;

    invoke-static {v7, v9}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->g()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_11

    move v7, v5

    :goto_3
    if-eqz v7, :cond_d

    sget-object v7, Lcom/paypal/android/sdk/fb;->T:Lcom/paypal/android/sdk/fb;

    invoke-static {v7}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v5, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->h()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v7, v3, v12}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    add-int/lit8 v4, v4, 0x1

    :cond_d
    sget-object v7, Lcom/paypal/android/sdk/fb;->aa:Lcom/paypal/android/sdk/fb;

    invoke-static {v7}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v7

    new-array v9, v13, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "<b>"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "</b>"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v8

    aput-object v1, v9, v5

    aput-object v2, v9, v6

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0, v3, v12}, Lcom/paypal/android/sdk/payments/dl;->a(ILjava/lang/String;Ljava/lang/String;Lcom/paypal/android/sdk/payments/i;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->c:[Landroid/widget/TextView;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    add-int/lit8 v1, v4, 0x1

    sget-object v0, Lcom/paypal/android/sdk/fb;->aD:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/cd;->a(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v0, "us"

    :cond_e
    const-string v6, "https://www.paypal.com/%s/cgi-bin/webscr?cmd=p/gen/ua/policy_privacy-outside"

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/text/SpannableString;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v2}, Lcom/paypal/android/sdk/payments/dl;->b(Landroid/text/SpannableString;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->d:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->d:Landroid/widget/TextView;

    add-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setNextFocusLeftId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setNextFocusRightId(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->d()Lcom/paypal/android/sdk/payments/PayPalConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalConfiguration;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v1, v1, Lcom/paypal/android/sdk/fc;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_f
    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->i:Landroid/widget/TextView;

    sget-object v1, Lcom/paypal/android/sdk/fb;->F:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->g:Landroid/widget/Button;

    new-instance v1, Lcom/paypal/android/sdk/payments/dw;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dw;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->h:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/paypal/android/sdk/payments/dy;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/dy;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->f:Lcom/paypal/android/sdk/payments/di;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->f:Lcom/paypal/android/sdk/payments/di;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->a(Lcom/paypal/android/sdk/payments/di;)V

    iput-object v12, p0, Lcom/paypal/android/sdk/payments/dl;->f:Lcom/paypal/android/sdk/payments/di;

    goto/16 :goto_0

    :cond_10
    const-string v3, ""

    goto/16 :goto_1

    :cond_11
    move v7, v8

    goto/16 :goto_3

    :cond_12
    move v4, v5

    goto/16 :goto_2
.end method

.method static synthetic f(Lcom/paypal/android/sdk/payments/dl;)V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/eb;->r:Lcom/paypal/android/sdk/eb;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/eb;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->k()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code/nonce invalid.  code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/cj;->e:Lcom/paypal/android/sdk/dx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nonce:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v1

    iget-object v1, v1, Lcom/paypal/android/sdk/cj;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/paypal/android/sdk/fb;->aL:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->showDialog(I)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method private g()Ljava/util/Set;
    .locals 8

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {}, Lcom/paypal/android/sdk/payments/dz;->values()[Lcom/paypal/android/sdk/payments/dz;

    move-result-object v4

    array-length v5, v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_10

    aget-object v6, v4, v1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/du;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dz;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/dl;->l:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/l;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->a:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->k:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/fb;->G:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->i:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_3

    sget-object v0, Lcom/paypal/android/sdk/fb;->H:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->j:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_4

    sget-object v0, Lcom/paypal/android/sdk/fb;->I:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->m:Lcom/paypal/android/sdk/payments/dz;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->n:Lcom/paypal/android/sdk/payments/dz;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->o:Lcom/paypal/android/sdk/payments/dz;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->p:Lcom/paypal/android/sdk/payments/dz;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->q:Lcom/paypal/android/sdk/payments/dz;

    if-eq v6, v0, :cond_5

    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->r:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_6

    :cond_5
    sget-object v0, Lcom/paypal/android/sdk/fb;->J:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->h:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_7

    sget-object v0, Lcom/paypal/android/sdk/fb;->K:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->d:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_8

    sget-object v0, Lcom/paypal/android/sdk/fb;->L:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->l:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_9

    sget-object v0, Lcom/paypal/android/sdk/fb;->M:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->b:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_a

    sget-object v0, Lcom/paypal/android/sdk/fb;->N:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_a
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->c:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_b

    sget-object v0, Lcom/paypal/android/sdk/fb;->O:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_b
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->g:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_c

    sget-object v0, Lcom/paypal/android/sdk/fb;->P:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_c
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->f:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_d

    sget-object v0, Lcom/paypal/android/sdk/fb;->Q:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_d
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->s:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_e

    sget-object v0, Lcom/paypal/android/sdk/fb;->R:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_e
    sget-object v0, Lcom/paypal/android/sdk/payments/dz;->e:Lcom/paypal/android/sdk/payments/dz;

    if-ne v6, v0, :cond_f

    sget-object v0, Lcom/paypal/android/sdk/fb;->S:Lcom/paypal/android/sdk/fb;

    invoke-static {v0}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v6}, Lcom/paypal/android/sdk/payments/dz;->name()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_10
    return-object v3
.end method

.method private h()Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->g()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 4

    new-instance v0, Lcom/paypal/android/sdk/payments/PayPalAuthorization;

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalService;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v2

    iget-object v2, v2, Lcom/paypal/android/sdk/cj;->e:Lcom/paypal/android/sdk/dx;

    invoke-virtual {v2}, Lcom/paypal/android/sdk/dx;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v3}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v3

    iget-object v3, v3, Lcom/paypal/android/sdk/cj;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/paypal/android/sdk/payments/PayPalAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Lcom/paypal/android/sdk/payments/dl;->a(ILcom/paypal/android/sdk/payments/PayPalAuthorization;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->finish()V

    return-void
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->c()Lcom/paypal/android/sdk/cj;

    move-result-object v0

    iget-object v0, v0, Lcom/paypal/android/sdk/cj;->e:Lcom/paypal/android/sdk/dx;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/dx;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->b:Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;

    invoke-virtual {v1}, Lcom/paypal/android/sdk/payments/PayPalOAuthScopes;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->i()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->c()V

    goto :goto_0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public finish()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".finish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onActivityResult("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unhandled requestCode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    if-ne p2, v2, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->i:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->j()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v3}, Lcom/paypal/android/sdk/payments/dl;->a(ILcom/paypal/android/sdk/payments/PayPalAuthorization;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->finish()V

    goto :goto_0

    :pswitch_1
    if-ne p2, v2, :cond_3

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/paypal/android/sdk/payments/dk;->a(Landroid/os/Bundle;)Lcom/paypal/android/sdk/payments/di;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->f:Lcom/paypal/android/sdk/payments/di;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->a(Lcom/paypal/android/sdk/payments/di;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, v3}, Lcom/paypal/android/sdk/payments/dl;->a(ILcom/paypal/android/sdk/payments/PayPalAuthorization;)V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    sget-object v1, Lcom/paypal/android/sdk/eb;->s:Lcom/paypal/android/sdk/eb;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/payments/PayPalService;->a(Lcom/paypal/android/sdk/eb;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onCreate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    invoke-static {p0}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->finish()V

    :cond_0
    iput-boolean v2, p0, Lcom/paypal/android/sdk/payments/dl;->g:Z

    :goto_0
    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->a()V

    invoke-virtual {p0}, Lcom/paypal/android/sdk/payments/dl;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.paypal.android.sdk.payments.ppAppInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/payments/du;

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->j:Lcom/paypal/android/sdk/payments/du;

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->d()V

    const v0, 0x103006e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    new-instance v0, Lcom/paypal/android/sdk/fc;

    invoke-direct {v0, p0}, Lcom/paypal/android/sdk/fc;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->a:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Landroid/widget/TextView;Lcom/paypal/android/sdk/fb;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->g:Landroid/widget/Button;

    sget-object v1, Lcom/paypal/android/sdk/fb;->f:Lcom/paypal/android/sdk/fb;

    invoke-static {v1}, Lcom/paypal/android/sdk/ez;->a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->c:Lcom/paypal/android/sdk/fc;

    iget-object v0, v0, Lcom/paypal/android/sdk/fc;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->f()V

    return-void

    :cond_1
    const-string v0, "pageTrackingSent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->g:Z

    const-string v0, "isLoginActivityStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->h:Z

    goto :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/paypal/android/sdk/fb;->bl:Lcom/paypal/android/sdk/fb;

    invoke-static {p0, v0, p2}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fb;Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/paypal/android/sdk/fb;->aE:Lcom/paypal/android/sdk/fb;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bq:Lcom/paypal/android/sdk/fb;

    invoke-static {p0, v0, v1}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/content/Context;Lcom/paypal/android/sdk/fb;Lcom/paypal/android/sdk/fb;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/paypal/android/sdk/fb;->an:Lcom/paypal/android/sdk/fb;

    invoke-static {p0, v0, p2, p1}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fb;Landroid/os/Bundle;I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/paypal/android/sdk/fb;->aM:Lcom/paypal/android/sdk/fb;

    new-instance v1, Lcom/paypal/android/sdk/payments/ds;

    invoke-direct {v1, p0}, Lcom/paypal/android/sdk/payments/ds;-><init>(Lcom/paypal/android/sdk/payments/dl;)V

    invoke-static {p0, v0, p2, v1}, Lcom/paypal/android/sdk/payments/cd;->a(Landroid/app/Activity;Lcom/paypal/android/sdk/fb;Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onDestroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->a:Lcom/paypal/android/sdk/payments/PayPalService;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/payments/PayPalService;->m()V

    :cond_0
    iget-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/dl;->k:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/paypal/android/sdk/payments/dl;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/paypal/android/sdk/payments/dl;->e:Z

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onRestart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    invoke-direct {p0}, Lcom/paypal/android/sdk/payments/dl;->d()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/paypal/android/sdk/payments/dl;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".onResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "pageTrackingSent"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/dl;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "isLoginActivityStarted"

    iget-boolean v1, p0, Lcom/paypal/android/sdk/payments/dl;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
