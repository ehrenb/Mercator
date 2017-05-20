.class public Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;
.super Ljava/lang/Object;
.source "PaymentPresenter.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/presenter/Presenter;


# static fields
.field private static final EXTRA_IS_PROCESSING_LOGIN:Ljava/lang/String; = "cm.aptoide.pt.v8engine.payment.extra.IS_PROCESSING_LOGIN"


# instance fields
.field private final aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

.field private final otherPayments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;"
        }
    .end annotation
.end field

.field private otherPaymentsVisible:Z

.field private final payer:Lcm/aptoide/pt/v8engine/payment/Payer;

.field private processingLogin:Z

.field private final product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

.field private final productRepository:Lcm/aptoide/pt/v8engine/repository/ProductRepository;

.field private selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

.field private final view:Lcm/aptoide/pt/v8engine/view/PaymentView;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/view/PaymentView;Lcm/aptoide/pt/v8engine/payment/AptoidePay;Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;Lcm/aptoide/pt/v8engine/payment/Payer;Lcm/aptoide/pt/v8engine/repository/ProductRepository;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    .line 51
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    .line 52
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    .line 53
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    .line 54
    iput-object p5, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->productRepository:Lcm/aptoide/pt/v8engine/repository/ProductRepository;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPayments:Ljava/util/List;

    .line 56
    return-void
.end method

.method private buySelection()Lrx/d;
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
    .line 193
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->buySelection()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$29;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$30;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private cancellationSelection()Lrx/d;
    .locals 3
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
    .line 226
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->cancellationSelection()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$36;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 228
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private clearLoginState()Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->processingLogin:Z

    return v0
.end method

.method private convertToPaymentViewModel(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;
    .locals 8

    .prologue
    .line 236
    new-instance v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v1

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getName()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getPrice()Lcm/aptoide/pt/v8engine/payment/Price;

    move-result-object v4

    invoke-virtual {v4}, Lcm/aptoide/pt/v8engine/payment/Price;->getAmount()D

    move-result-wide v4

    .line 238
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getPrice()Lcm/aptoide/pt/v8engine/payment/Price;

    move-result-object v6

    invoke-virtual {v6}, Lcm/aptoide/pt/v8engine/payment/Price;->getCurrencySymbol()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getPaymentViewStatus(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;-><init>(ILjava/lang/String;Ljava/lang/String;DLjava/lang/String;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;)V

    return-object v0
.end method

.method private getAllPayments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPayments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPayments:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_0
    return-object v0
.end method

.method private getDefaultPayment(Ljava/util/List;)Lrx/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;)",
            "Lrx/h",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 270
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$38;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-virtual {v0}, Lrx/d;->b()Lrx/h;

    move-result-object v0

    return-object v0
.end method

.method private getPaymentViewStatus(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;
    .locals 1

    .prologue
    .line 243
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->isAuthorizationRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->USE:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    .line 255
    :goto_0
    return-object v0

    .line 247
    :cond_0
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getAuthorization()Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getAuthorization()Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isAuthorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    sget-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->USE:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    goto :goto_0

    .line 250
    :cond_1
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getAuthorization()Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/Authorization;->isPending()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    sget-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->APPROVING:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    goto :goto_0

    .line 255
    :cond_2
    sget-object v0, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;->REGISTER:Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel$Status;

    goto :goto_0
.end method

.method private getSelectedPayment(Ljava/util/List;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ")",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$37;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/b/e;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1}, Lrx/d;->d(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private hideGlobalAndPaymentsLoadingAndDismiss(Lcm/aptoide/pt/v8engine/payment/Purchase;)V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideGlobalLoading()V

    .line 304
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hidePaymentsLoading()V

    .line 305
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/view/PaymentView;->dismiss(Lcm/aptoide/pt/v8engine/payment/Purchase;)V

    .line 306
    return-void
.end method

.method private hideGlobalAndPaymentsLoadingAndDismiss(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideGlobalLoading()V

    .line 287
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hidePaymentsLoading()V

    .line 288
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/view/PaymentView;->dismiss(Ljava/lang/Throwable;)V

    .line 289
    return-void
.end method

.method private hideGlobalAndPaymentsLoadingAndShowError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideGlobalLoading()V

    .line 293
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hidePaymentsLoading()V

    .line 295
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showNetworkError()V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showUnknownError()V

    goto :goto_0
.end method

.method private hideGlobalLoadingAndNavigateToAuthorizationView(Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideGlobalLoading()V

    .line 189
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/Authorization;->getPaymentId()I

    move-result v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    invoke-interface {v0, v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->navigateToAuthorizationView(ILcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V

    .line 190
    return-void
.end method

.method private hideOtherPayments()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideOtherPayments()V

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPaymentsVisible:Z

    .line 210
    return-void
.end method

.method private isDefaultPayment(Lcm/aptoide/pt/v8engine/payment/Payment;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 274
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-interface {v1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v1

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v1

    if-eq v1, v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$getSelectedPayment$40(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;Lcm/aptoide/pt/v8engine/payment/Payment;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 266
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v0

    invoke-virtual {p0}, Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$null$14(Ljava/lang/Boolean;)Lrx/d;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/security/auth/login/LoginException;

    const-string v1, "Not logged In. Payment can not be processed!"

    invoke-direct {v0, v1}, Ljavax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Throwable;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic lambda$paymentRegisterSelection$29(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/payment/Authorization;
    .locals 1

    .prologue
    .line 179
    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/payment/Payment;->getAuthorization()Lcm/aptoide/pt/v8engine/payment/Authorization;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$present$0(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->RESUME:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$present$2(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$present$5(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$present$7(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->CREATE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    invoke-virtual {v0, p0}, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$showPayments$22(Lcm/aptoide/pt/v8engine/payment/Payment;Lcm/aptoide/pt/v8engine/payment/Payment;)Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 151
    invoke-interface {p1}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v0

    invoke-interface {p0}, Lcm/aptoide/pt/v8engine/payment/Payment;->getId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadPayments()Lrx/d;
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
    .line 133
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->availablePayments(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/d;

    move-result-object v0

    .line 134
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$19;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private login()Lrx/d;
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
    .line 119
    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$16;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/d;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Lrx/b/d;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$17;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$18;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 129
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private otherPaymentsSelection()Lrx/d;
    .locals 3
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
    .line 198
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->otherPaymentsSelection()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$31;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 204
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private paymentRegisterSelection()Lrx/d;
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
    .line 176
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->registerPaymentSelection()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$25;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$26;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$27;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$28;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private paymentUseSelection()Lrx/d;
    .locals 3
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
    .line 158
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->usePaymentSelection()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$23;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$24;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->PAUSE:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 163
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method private saveLoginState()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->processingLogin:Z

    return v0
.end method

.method private showGlobalAndPaymentsLoading()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showGlobalLoading()V

    .line 282
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showPaymentsLoading()V

    .line 283
    return-void
.end method

.method private showOtherPayments(Ljava/util/List;)Lrx/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;)",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$32;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lrx/d;->g(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Lrx/d;->p()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$33;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$34;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$35;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Ljava/util/List;)Lrx/b/a;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/a;)Lrx/d;

    move-result-object v0

    .line 222
    invoke-virtual {v0}, Lrx/d;->c()Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private showPayments(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ")",
            "Lrx/a;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {p0, p2}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$20;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/b/a;

    move-result-object v0

    invoke-static {v0}, Lrx/a;->a(Lrx/b/a;)Lrx/a;

    move-result-object v0

    .line 150
    invoke-static {p1}, Lrx/d;->a(Ljava/lang/Iterable;)Lrx/d;

    move-result-object v1

    invoke-static {p2}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$21;->lambdaFactory$(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/b/e;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lrx/d;->p()Lrx/d;

    move-result-object v1

    .line 153
    invoke-virtual {v1}, Lrx/d;->b()Lrx/h;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$22;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Lrx/h;->c(Lrx/b/e;)Lrx/a;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/a;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method private showProduct(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showProduct(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V

    .line 233
    return-void
.end method

.method private showSelectedPayment(Lcm/aptoide/pt/v8engine/payment/Payment;)V
    .locals 2

    .prologue
    .line 259
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    .line 260
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->convertToPaymentViewModel(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;

    move-result-object v1

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showSelectedPayment(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)V

    .line 261
    return-void
.end method


# virtual methods
.method synthetic lambda$buySelection$32(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showGlobalLoading()V

    return-void
.end method

.method synthetic lambda$buySelection$33(Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->process(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$cancellationSelection$39(Ljava/lang/Void;)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->dismiss()V

    return-void
.end method

.method synthetic lambda$getDefaultPayment$41(Lcm/aptoide/pt/v8engine/payment/Payment;)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 270
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->isDefaultPayment(Lcm/aptoide/pt/v8engine/payment/Payment;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$loadPayments$20(Ljava/util/List;)Lrx/d;
    .locals 2

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hidePaymentsLoading()V

    .line 138
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showPaymentsNotFoundMessage()V

    .line 139
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    .line 143
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hidePaymentsLoading()V

    .line 142
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getDefaultPayment(Ljava/util/List;)Lrx/h;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$41;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Ljava/util/List;)Lrx/b/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/h;->c(Lrx/b/e;)Lrx/a;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$login$16()Lrx/d;
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->processingLogin:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/Payer;->isLoggedIn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/d;->a(Ljava/lang/Object;)Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$42;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->payer:Lcm/aptoide/pt/v8engine/payment/Payer;

    invoke-virtual {v0}, Lcm/aptoide/pt/v8engine/payment/Payer;->login()Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$43;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/a;)Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$login$17(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->clearLoginState()Z

    return-void
.end method

.method synthetic lambda$login$18(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->clearLoginState()Z

    return-void
.end method

.method synthetic lambda$null$15()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->saveLoginState()Z

    return-void
.end method

.method synthetic lambda$null$19(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showPayments(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$25()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->hideOtherPayments()V

    return-void
.end method

.method synthetic lambda$null$3(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->hideGlobalAndPaymentsLoadingAndShowError(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$null$30(Lcm/aptoide/pt/v8engine/payment/Authorization;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->hideGlobalLoadingAndNavigateToAuthorizationView(Lcm/aptoide/pt/v8engine/payment/Authorization;)V

    return-void
.end method

.method synthetic lambda$otherPaymentsSelection$34(Ljava/lang/Void;)Lrx/d;
    .locals 2

    .prologue
    .line 199
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPaymentsVisible:Z

    if-nez v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getAllPayments()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->selectedPayment:Lcm/aptoide/pt/v8engine/payment/Payment;

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showPayments(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;

    move-result-object v0

    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    .line 203
    :goto_0
    return-object v0

    .line 202
    :cond_0
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->hideOtherPayments()V

    .line 203
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto :goto_0
.end method

.method synthetic lambda$paymentRegisterSelection$27(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showGlobalLoading()V

    return-void
.end method

.method synthetic lambda$paymentRegisterSelection$28(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/d;
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getAllPayments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getSelectedPayment(Ljava/util/List;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$paymentRegisterSelection$31(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/d;
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    invoke-virtual {v0, p1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->initiate(Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/a;

    move-result-object v0

    .line 181
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/g;)Lrx/a;

    move-result-object v0

    invoke-static {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$39;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;Lcm/aptoide/pt/v8engine/payment/Authorization;)Lrx/b/a;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/b/a;)Lrx/a;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$paymentUseSelection$24(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/d;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPayments:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getSelectedPayment(Ljava/util/List;Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$paymentUseSelection$26(Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/d;
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->getAllPayments()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showPayments(Ljava/util/List;Lcm/aptoide/pt/v8engine/payment/Payment;)Lrx/a;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$40;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/b/a;)Lrx/a;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Lrx/a;->b()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$1(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lrx/d;
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->paymentUseSelection()Lrx/d;

    move-result-object v0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPaymentsSelection()Lrx/d;

    move-result-object v1

    .line 63
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->cancellationSelection()Lrx/d;

    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lrx/d;->a(Lrx/d;Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lrx/d;->k()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$10(Ljava/lang/Void;)Lrx/d;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->aptoidePay:Lcm/aptoide/pt/v8engine/payment/AptoidePay;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/v8engine/payment/AptoidePay;->getConfirmation(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/d;

    move-result-object v0

    .line 87
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->loadPayments()Lrx/d;

    move-result-object v1

    const-class v2, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;

    invoke-virtual {v1, v2}, Lrx/d;->a(Ljava/lang/Class;)Lrx/d;

    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lrx/d;->b(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$11(Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;)Lrx/d;
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showGlobalLoading()V

    .line 98
    :goto_0
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->productRepository:Lcm/aptoide/pt/v8engine/repository/ProductRepository;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    invoke-interface {v0, v1}, Lcm/aptoide/pt/v8engine/repository/ProductRepository;->getPurchase(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lrx/h;->a()Lrx/d;

    move-result-object v0

    .line 101
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 103
    :goto_1
    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->product:Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;

    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showProduct(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V

    .line 95
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideGlobalLoading()V

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {}, Lrx/d;->d()Lrx/d;

    move-result-object v0

    goto :goto_1
.end method

.method synthetic lambda$present$12(Lcm/aptoide/pt/v8engine/payment/Purchase;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->hideGlobalAndPaymentsLoadingAndDismiss(Lcm/aptoide/pt/v8engine/payment/Purchase;)V

    return-void
.end method

.method synthetic lambda$present$13(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->hideGlobalAndPaymentsLoadingAndDismiss(Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic lambda$present$4(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lrx/d;
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->buySelection()Lrx/d;

    move-result-object v0

    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->paymentRegisterSelection()Lrx/d;

    move-result-object v1

    invoke-static {v0, v1}, Lrx/d;->b(Lrx/d;Lrx/d;)Lrx/d;

    move-result-object v0

    .line 70
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$44;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 71
    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/b/b;)Lrx/d;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lrx/d;->k()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$6(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->hideAllErrors()V

    return-void
.end method

.method synthetic lambda$present$8(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lrx/d;
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->login()Lrx/d;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$present$9(Ljava/lang/Void;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showGlobalAndPaymentsLoading()V

    return-void
.end method

.method synthetic lambda$showOtherPayments$35(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;
    .locals 1

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->convertToPaymentViewModel(Lcm/aptoide/pt/v8engine/payment/Payment;)Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$showOtherPayments$36(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0, p1}, Lcm/aptoide/pt/v8engine/view/PaymentView;->showOtherPayments(Ljava/util/List;)V

    return-void
.end method

.method synthetic lambda$showOtherPayments$37(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPaymentsVisible:Z

    return-void
.end method

.method synthetic lambda$showOtherPayments$38(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPayments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->otherPayments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    return-void
.end method

.method synthetic lambda$showPayments$21(Lcm/aptoide/pt/v8engine/payment/Payment;)V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showSelectedPayment(Lcm/aptoide/pt/v8engine/payment/Payment;)V

    return-void
.end method

.method synthetic lambda$showPayments$23(Ljava/util/List;)Lrx/a;
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->showOtherPayments(Ljava/util/List;)Lrx/a;

    move-result-object v0

    return-object v0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->getLifecycle()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$1;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 64
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->getLifecycle()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$5;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$6;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 73
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 76
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->getLifecycle()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$7;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$8;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 79
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lrx/d;->n()Lrx/k;

    .line 82
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/view/PaymentView;->getLifecycle()Lrx/d;

    move-result-object v0

    invoke-static {}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$9;->lambdaFactory$()Lrx/b/e;

    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lrx/d;->c(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$10;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$11;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lrx/d;->b(Lrx/b/b;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$12;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    .line 88
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$13;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/e;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v1}, Lrx/d;->e(Lrx/b/e;)Lrx/d;

    move-result-object v0

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->view:Lcm/aptoide/pt/v8engine/view/PaymentView;

    sget-object v2, Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;->DESTROY:Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;

    .line 105
    invoke-interface {v1, v2}, Lcm/aptoide/pt/v8engine/view/PaymentView;->bindUntilEvent(Lcm/aptoide/pt/v8engine/view/View$LifecycleEvent;)Lcom/trello/rxlifecycle/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/d$c;)Lrx/d;

    move-result-object v0

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$14;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v1

    invoke-static {p0}, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter$$Lambda$15;->lambdaFactory$(Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;)Lrx/b/b;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    .line 108
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    const-string v0, "cm.aptoide.pt.v8engine.payment.extra.IS_PROCESSING_LOGIN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->processingLogin:Z

    .line 116
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 111
    const-string v0, "cm.aptoide.pt.v8engine.payment.extra.IS_PROCESSING_LOGIN"

    iget-boolean v1, p0, Lcm/aptoide/pt/v8engine/presenter/PaymentPresenter;->processingLogin:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method
