.class public Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;
.super Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
.source "PaidAppProduct.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final appId:J

.field private final storeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct$1;

    invoke-direct {v0}, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct$1;-><init>()V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iput-wide p5, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->appId:J

    .line 32
    iput-object p7, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->storeName:Ljava/lang/String;

    .line 33
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;-><init>(Landroid/os/Parcel;)V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->appId:J

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->storeName:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public getAppId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->appId:J

    return-wide v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->writeToParcel(Landroid/os/Parcel;I)V

    .line 55
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->appId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/PaidAppProduct;->storeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method
