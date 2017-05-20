.class public Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;
.super Lcm/aptoide/pt/v8engine/activity/ActivityView;
.source "WebAuthorizationActivity.java"


# static fields
.field private static final EXTRA_PAYMENT_ID:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PAYMENT_ID"

.field private static final EXTRA_PRODUCT:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PRODUCT"


# instance fields
.field private aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

.field private paymentId:I

.field private progressBarContainer:Landroid/view/View;

.field private unknownErrorDialog:Landroid/support/v7/a/d;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Lcm/aptoide/pt/v8engine/payment/AptoidePay;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    return-object v0
.end method

.method static synthetic access$200(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->hideLoadingAndDismiss()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;ILcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const-string v1, "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PAYMENT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50
    const-string v1, "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PRODUCT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 51
    return-object v0
.end method

.method private hideLoadingAndDismiss()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->finish()V

    .line 111
    return-void
.end method

.method static synthetic lambda$onCreate$1(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lcm/aptoide/pt/v8engine/payment/Authorization$Status;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getStatus()Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    move-result-object v0

    return-object v0
.end method

.method private showAuthorization(Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;

    invoke-direct {v1, p0, p1}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$1;-><init>(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 136
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->finish()V

    .line 75
    return-void
.end method

.method synthetic lambda$onCreate$2(Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->hideLoadingAndDismiss()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isInitiated()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 93
    check-cast p1, Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->showAuthorization(Lcm/aptoide/pt/v8engine/payment/authorizations/WebAuthorization;)V

    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 56
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->activity_web_authorization:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->setContentView(I)V

    .line 59
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PAYMENT_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PRODUCT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PAYMENT_ID"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->paymentId:I

    .line 61
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cm.aptoide.pt.v8engine.payment.providers.boacompra.intent.extra.PRODUCT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    .line 63
    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getProductRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lcm/aptoide/pt/v8engine/repository/ProductRepository;

    move-result-object v3

    .line 64
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    invoke-static {p0, v1}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    move-result-object v1

    .line 65
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentAuthorizationRepository(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    move-result-object v2

    new-instance v4, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    invoke-direct {v4, p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-direct {v5, p0}, Lcm/aptoide/pt/v8engine/payment/Payer;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;-><init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;Lcm/aptoide/pt/v8engine/repository/ProductRepository;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;Lcm/aptoide/pt/v8engine/payment/Payer;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    .line 68
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_boa_compra_authorization_web_view:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    .line 69
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Landroid/webkit/WebChromeClient;

    invoke-direct {v1}, Landroid/webkit/WebChromeClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 71
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_web_authorization_preogress_bar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;

    .line 72
    new-instance v0, Landroid/support/v7/a/d$a;

    invoke-direct {v0, p0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->having_some_trouble:I

    invoke-virtual {v0, v1}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v0

    const v1, 0x104000a

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->progressBarContainer:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    iget v1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->paymentId:I

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->getAuthorization(I)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$2;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 84
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->f:Lcom/trello/rxlifecycle/a/a;

    .line 85
    invoke-virtual {p0, v1}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->bindUntilEvent(Lcom/trello/rxlifecycle/a/a;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;)Lrx/b/b;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/b;)Lrx/k;

    .line 98
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Web payment urls must be provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 101
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->onDestroy()V

    .line 102
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 104
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 105
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->dismiss()V

    .line 106
    return-void
.end method
