.class public Lcm/aptoide/pt/v8engine/activity/PaymentActivity;
.super Lcm/aptoide/pt/v8engine/activity/ActivityView;
.source "PaymentActivity.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/view/PaymentView;


# static fields
.field private static final PRODUCT_EXTRA:Ljava/lang/String; = "product"


# instance fields
.field private actionButtons:Landroid/view/View;

.field private body:Landroid/view/View;

.field private buyButton:Landroid/widget/Button;

.field private cancelButton:Landroid/widget/Button;

.field private globalProgressView:Landroid/view/View;

.field private header:Landroid/view/View;

.field private intentFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;

.field private morePaymentsButton:Landroid/widget/Button;

.field private morePaymentsContainer:Landroid/view/View;

.field private morePaymentsList:Landroid/view/ViewGroup;

.field private networkErrorDialog:Landroid/support/v7/a/d;

.field private noPaymentsText:Landroid/widget/TextView;

.field private overlay:Landroid/view/View;

.field private paymentClicks:Lrx/j/b;

.field private paymentsProgressView:Landroid/view/View;

.field private productDescription:Landroid/widget/TextView;

.field private productIcon:Landroid/widget/ImageView;

.field private productName:Landroid/widget/TextView;

.field private registerPaymentClick:Lcom/c/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/c/b/a",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private selectedPaymentName:Landroid/widget/TextView;

.field private selectedPaymentPrice:Landroid/widget/TextView;

.field private unknownErrorDialog:Landroid/support/v7/a/d;

.field private usePaymentClick:Lcom/c/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/c/b/a",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView;-><init>()V

    return-void
.end method

.method private finish(I)V
    .locals 0

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->setResult(I)V

    .line 314
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->finish()V

    .line 315
    return-void
.end method

.method private finish(ILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 308
    invoke-virtual {p0, p1, p2}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->setResult(ILandroid/content/Intent;)V

    .line 309
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->finish()V

    .line 310
    return-void
.end method

.method public static getIntent(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    const-string v1, "product"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    return-object v0
.end method

.method static synthetic lambda$showOtherPayments$1(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 210
    return-void
.end method

.method static synthetic lambda$showOtherPayments$2(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 212
    return-void
.end method

.method static synthetic lambda$showOtherPayments$4(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method static synthetic lambda$showOtherPayments$5(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 223
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 224
    return-void
.end method


# virtual methods
.method public buySelection()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->buyButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    .line 146
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 147
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public cancellationSelection()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->cancelButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->overlay:Landroid/view/View;

    invoke-static {v1}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/d;->b(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    .line 140
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 141
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 279
    const/4 v0, 0x0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->intentFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;->createFromCancellation()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->finish(ILandroid/content/Intent;)V

    .line 280
    return-void
.end method

.method public dismiss(Lcm/aptoide/pt/v8engine/payment/Purchase;)V
    .locals 2

    .prologue
    .line 271
    const/4 v0, -0x1

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->intentFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;->create(Lcm/aptoide/pt/v8engine/payment/Purchase;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->finish(ILandroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public dismiss(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 275
    const/4 v0, 0x0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->intentFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;->create(Ljava/lang/Throwable;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->finish(ILandroid/content/Intent;)V

    .line 276
    return-void
.end method

.method public hideAllErrors()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->networkErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->dismiss()V

    .line 304
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->dismiss()V

    .line 305
    return-void
.end method

.method public hideGlobalLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->header:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->body:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->actionButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->globalProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    return-void
.end method

.method public hideOtherPayments()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsButton:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->arrow_down:I

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 243
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    return-void
.end method

.method public hidePaymentsLoading()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentsProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method

.method synthetic lambda$showOtherPayments$0(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->usePaymentClick:Lcom/c/b/a;

    invoke-virtual {v0, p1}, Lcom/c/b/a;->call(Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$showOtherPayments$3(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->registerPaymentClick:Lcom/c/b/a;

    invoke-virtual {v0, p1}, Lcom/c/b/a;->call(Ljava/lang/Object;)V

    return-void
.end method

.method public navigateToAuthorizationView(ILcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V
    .locals 1

    .prologue
    .line 283
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/activity/WebAuthorizationActivity;->getIntent(Landroid/content/Context;ILcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 80
    invoke-super {p0, p1}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->activity_payment:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->setContentView(I)V

    .line 83
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->payment_activity_overlay:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->overlay:Landroid/view/View;

    .line 84
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_global_progress_bar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->globalProgressView:Landroid/view/View;

    .line 85
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_list_progress_bar:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentsProgressView:Landroid/view/View;

    .line 86
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_no_payments_text:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->noPaymentsText:Landroid/widget/TextView;

    .line 88
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_header:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->header:Landroid/view/View;

    .line 89
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_product_icon:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->productIcon:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_product_name:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->productName:Landroid/widget/TextView;

    .line 91
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_product_description:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->productDescription:Landroid/widget/TextView;

    .line 93
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_body:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->body:Landroid/view/View;

    .line 94
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_selected_payment_name:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->selectedPaymentName:Landroid/widget/TextView;

    .line 95
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_selected_payment_price:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->selectedPaymentPrice:Landroid/widget/TextView;

    .line 96
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_more_payments_button:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsButton:Landroid/widget/Button;

    .line 97
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_list:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsList:Landroid/view/ViewGroup;

    .line 98
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_list_container:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsContainer:Landroid/view/View;

    .line 100
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_buttons:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->actionButtons:Landroid/view/View;

    .line 101
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_cancel_button:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->cancelButton:Landroid/widget/Button;

    .line 102
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->activity_payment_buy_button:I

    invoke-virtual {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->buyButton:Landroid/widget/Button;

    .line 104
    invoke-static {}, Lcom/c/b/a;->a()Lcom/c/b/a;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->usePaymentClick:Lcom/c/b/a;

    .line 105
    invoke-static {}, Lcom/c/b/a;->a()Lcom/c/b/a;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->registerPaymentClick:Lcom/c/b/a;

    .line 106
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;

    new-instance v1, Lcm/aptoide/pt/iab/ErrorCodeFactory;

    invoke-direct {v1}, Lcm/aptoide/pt/iab/ErrorCodeFactory;-><init>()V

    invoke-direct {v0, v1}, Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;-><init>(Lcm/aptoide/pt/iab/ErrorCodeFactory;)V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->intentFactory:Lcm/aptoide/pt/v8engine/payment/PurchaseIntentFactory;

    .line 107
    new-instance v0, Lrx/j/b;

    invoke-direct {v0}, Lrx/j/b;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentClicks:Lrx/j/b;

    .line 108
    new-instance v0, Landroid/support/v7/view/d;

    sget v1, Lcm/aptoide/pt/v8engine/R$style;->AptoideThemeDefault:I

    invoke-direct {v0, p0, v1}, Landroid/support/v7/view/d;-><init>(Landroid/content/Context;I)V

    .line 110
    new-instance v1, Landroid/support/v7/a/d$a;

    invoke-direct {v1, v0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    sget v2, Lcm/aptoide/pt/v8engine/R$string;->connection_error:I

    invoke-virtual {v1, v2}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v1

    .line 111
    invoke-virtual {v1, v3, v4}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v1

    iput-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->networkErrorDialog:Landroid/support/v7/a/d;

    .line 113
    new-instance v1, Landroid/support/v7/a/d$a;

    invoke-direct {v1, v0}, Landroid/support/v7/a/d$a;-><init>(Landroid/content/Context;)V

    sget v0, Lcm/aptoide/pt/v8engine/R$string;->having_some_trouble:I

    .line 114
    invoke-virtual {v1, v0}, Landroid/support/v7/a/d$a;->b(I)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v3, v4}, Landroid/support/v7/a/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/a/d$a;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/support/v7/a/d$a;->b()Landroid/support/v7/a/d;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    .line 118
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "product"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    .line 120
    invoke-static {p0, v9}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getProductRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lcm/aptoide/pt/v8engine/repository/ProductRepository;

    move-result-object v3

    .line 121
    new-instance v5, Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-direct {v5, p0}, Lcm/aptoide/pt/v8engine/payment/Payer;-><init>(Landroid/content/Context;)V

    .line 122
    new-instance v6, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;

    new-instance v0, Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    .line 123
    invoke-static {p0, v9}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentConfirmationRepository(Landroid/content/Context;Lcm/aptoide/pt/v8engine/payment/Product;)Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;

    move-result-object v1

    .line 124
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/repository/RepositoryFactory;->getPaymentAuthorizationRepository(Landroid/content/Context;)Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;

    move-result-object v2

    new-instance v4, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;

    invoke-direct {v4, p0}, Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;-><init>(Landroid/content/Context;)V

    invoke-direct/range {v0 .. v5}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;-><init>(Lcm/aptoide/pt/v8engine/repository/PaymentConfirmationRepository;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationRepository;Lcm/aptoide/pt/v8engine/repository/ProductRepository;Lcm/aptoide/pt/v8engine/repository/PaymentAuthorizationFactory;Lcm/aptoide/pt/v8engine/payment/Payer;)V

    move-object v7, p0

    move-object v8, v0

    move-object v10, v5

    move-object v11, v3

    invoke-direct/range {v6 .. v11}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;-><init>(Lcm/aptoide/pt/v8engine/view/PaymentView;Lcm/aptoide/pt/v8engine/payment/AptoidePay;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;Lcm/aptoide/pt/v8engine/payment/Payer;Lcm/aptoide/pt/v8engine/repository/ProductRepository;)V

    .line 122
    invoke-virtual {p0, v6, p1}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->attachPresenter(Lcm/aptoide/pt/v8engine/presenter/Presenter;Landroid/os/Bundle;)V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0}, Lcm/aptoide/pt/v8engine/activity/ActivityView;->onDestroy()V

    .line 131
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentClicks:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 132
    return-void
.end method

.method public otherPaymentsSelection()Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v0

    .line 152
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 153
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method public registerPaymentSelection()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->registerPaymentClick:Lcom/c/b/a;

    return-object v0
.end method

.method public showGlobalLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 161
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->header:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->body:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->actionButtons:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->globalProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 165
    return-void
.end method

.method public showNetworkError()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->networkErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->networkErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 294
    :cond_0
    return-void
.end method

.method public showOtherPayments(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 172
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsList:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 173
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->noPaymentsText:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsButton:Landroid/widget/Button;

    sget v1, Lcm/aptoide/pt/v8engine/R$drawable;->arrow_up:I

    invoke-virtual {v0, v9, v9, v1, v9}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 175
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentClicks:Lrx/j/b;

    invoke-virtual {v0}, Lrx/j/b;->a()V

    .line 177
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsButton:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 194
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;

    .line 195
    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcm/aptoide/pt/v8engine/R$layout;->payment_item:I

    iget-object v3, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsList:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 196
    sget v1, Lcm/aptoide/pt/v8engine/R$id;->item_payment_name:I

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 197
    sget v2, Lcm/aptoide/pt/v8engine/R$id;->item_payment_description:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 198
    sget v3, Lcm/aptoide/pt/v8engine/R$id;->item_payment_button_use:I

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 199
    sget v4, Lcm/aptoide/pt/v8engine/R$id;->item_payment_button_register:I

    invoke-virtual {v7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 200
    sget v5, Lcm/aptoide/pt/v8engine/R$id;->item_payment_approving_text:I

    invoke-virtual {v7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 202
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    sget-object v1, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$1;->$SwitchMap$cm$aptoide$pt$v8engine$view$PaymentView$PaymentViewModel$Status:[I

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getStatus()Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    move-result-object v2

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 235
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid payment view model state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsContainer:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x48

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getPixels(I)I

    move-result v1

    mul-int/2addr v0, v1

    .line 184
    const/16 v1, 0x90

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;->getPixels(I)I

    move-result v1

    .line 185
    iget-object v2, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_0

    .line 206
    :pswitch_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentClicks:Lrx/j/b;

    invoke-static {v3}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    .line 207
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v8

    invoke-virtual {v2, v8}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v2

    .line 208
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v8

    invoke-virtual {v2, v8}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/PaymentActivity;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/b/b;

    move-result-object v0

    .line 209
    invoke-virtual {v2, v0}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$$Lambda$2;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$$Lambda$3;->lambdaFactory$()Lrx/b/b;

    move-result-object v8

    .line 210
    invoke-virtual {v0, v2, v8}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 206
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 213
    invoke-virtual {v3, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    :goto_2
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->morePaymentsList:Landroid/view/ViewGroup;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 218
    :pswitch_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentClicks:Lrx/j/b;

    invoke-static {v4}, Lcom/c/a/b/c;->a(Landroid/view/View;)Lrx/d;

    move-result-object v2

    .line 219
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v8

    invoke-virtual {v2, v8}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v2

    .line 220
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v8

    invoke-virtual {v2, v8}, Lrx/d;->c(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/activity/PaymentActivity;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/b/b;

    move-result-object v0

    .line 221
    invoke-virtual {v2, v0}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$$Lambda$5;->lambdaFactory$()Lrx/b/b;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/v8engine/activity/PaymentActivity$$Lambda$6;->lambdaFactory$()Lrx/b/b;

    move-result-object v8

    .line 222
    invoke-virtual {v0, v2, v8}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 218
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    .line 225
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 226
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 227
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 230
    :pswitch_2
    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 232
    invoke-virtual {v3, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 239
    :cond_1
    return-void

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showPaymentsLoading()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->paymentsProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    return-void
.end method

.method public showPaymentsNotFoundMessage()V
    .locals 2

    .prologue
    .line 287
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->noPaymentsText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    return-void
.end method

.method public showProduct(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V
    .locals 3

    .prologue
    .line 247
    invoke-static {p0}, Lcm/aptoide/pt/imageloader/ImageLoader;->with(Landroid/content/Context;)Lcm/aptoide/pt/imageloader/ImageLoader;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->productIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/imageloader/ImageLoader;->load(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bumptech/glide/g/b/k;

    .line 248
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->productName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->productDescription:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    return-void
.end method

.method public showSelectedPayment(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)V
    .locals 8

    .prologue
    .line 253
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->selectedPaymentName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->selectedPaymentPrice:Landroid/widget/TextView;

    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%.2f %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getPrice()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 256
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getCurrency()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 255
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method public showUnknownError()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->networkErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->unknownErrorDialog:Landroid/support/v7/a/d;

    invoke-virtual {v0}, Landroid/support/v7/a/d;->show()V

    .line 300
    :cond_0
    return-void
.end method

.method public usePaymentSelection()Lrx/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/activity/PaymentActivity;->usePaymentClick:Lcom/c/b/a;

    return-object v0
.end method
