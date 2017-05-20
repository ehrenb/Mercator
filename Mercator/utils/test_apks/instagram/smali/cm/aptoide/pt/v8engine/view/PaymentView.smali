.class public interface abstract Lcm/aptoide/pt/v8engine/view/PaymentView;
.super Ljava/lang/Object;
.source "PaymentView.java"

# interfaces
.implements Lcm/aptoide/pt/v8engine/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;
    }
.end annotation


# virtual methods
.method public abstract buySelection()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract cancellationSelection()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dismiss()V
.end method

.method public abstract dismiss(Lcm/aptoide/pt/v8engine/payment/Purchase;)V
.end method

.method public abstract dismiss(Ljava/lang/Throwable;)V
.end method

.method public abstract hideAllErrors()V
.end method

.method public abstract hideGlobalLoading()V
.end method

.method public abstract hideOtherPayments()V
.end method

.method public abstract hidePaymentsLoading()V
.end method

.method public abstract navigateToAuthorizationView(ILcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V
.end method

.method public abstract otherPaymentsSelection()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerPaymentSelection()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract showGlobalLoading()V
.end method

.method public abstract showNetworkError()V
.end method

.method public abstract showOtherPayments(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showPaymentsLoading()V
.end method

.method public abstract showPaymentsNotFoundMessage()V
.end method

.method public abstract showProduct(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)V
.end method

.method public abstract showSelectedPayment(Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;)V
.end method

.method public abstract showUnknownError()V
.end method

.method public abstract usePaymentSelection()Lrx/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/d",
            "<",
            "Lcm/aptoide/pt/v8engine/view/PaymentView$PaymentViewModel;",
            ">;"
        }
    .end annotation
.end method
