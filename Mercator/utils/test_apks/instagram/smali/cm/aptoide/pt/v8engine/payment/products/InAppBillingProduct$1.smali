.class final Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct$1;
.super Ljava/lang/Object;
.source "InAppBillingProduct.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    invoke-direct {v0, p1}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct$1;->createFromParcel(Landroid/os/Parcel;)Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;
    .locals 1

    .prologue
    .line 21
    new-array v0, p1, [Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct$1;->newArray(I)[Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;

    move-result-object v0

    return-object v0
.end method
