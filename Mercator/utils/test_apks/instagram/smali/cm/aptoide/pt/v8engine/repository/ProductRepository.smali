.class public interface abstract Lcm/aptoide/pt/v8engine/repository/ProductRepository;
.super Ljava/lang/Object;
.source "ProductRepository.java"


# virtual methods
.method public abstract getPayments(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;",
            ")",
            "Lrx/h",
            "<",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Payment;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getPurchase(Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;)Lrx/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;",
            ")",
            "Lrx/h",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/Purchase;",
            ">;"
        }
    .end annotation
.end method
