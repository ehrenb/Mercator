.class public Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;
.super Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
.source "InAppBillingProduct.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiVersion:I

.field private final developerPayload:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final sku:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iput p5, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->apiVersion:I

    .line 35
    iput-object p6, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->sku:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->packageName:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->developerPayload:Ljava/lang/String;

    .line 38
    iput-object p9, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->type:Ljava/lang/String;

    .line 39
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;-><init>(Landroid/os/Parcel;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->apiVersion:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->sku:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->packageName:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->developerPayload:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->type:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getApiVersion()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->apiVersion:I

    return v0
.end method

.method public getDeveloperPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->developerPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->sku:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->type:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->writeToParcel(Landroid/os/Parcel;I)V

    .line 76
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->apiVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->sku:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->developerPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/InAppBillingProduct;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
