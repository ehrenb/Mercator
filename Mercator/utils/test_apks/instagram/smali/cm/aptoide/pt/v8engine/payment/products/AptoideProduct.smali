.class public abstract Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;
.super Ljava/lang/Object;
.source "AptoideProduct.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcm/aptoide/pt/v8engine/payment/Product;


# instance fields
.field private final description:Ljava/lang/String;

.field private final icon:Ljava/lang/String;

.field private final id:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->id:I

    .line 24
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->icon:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->title:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->description:Ljava/lang/String;

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->id:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->icon:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->title:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->description:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->id:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->title:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->icon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/payment/products/AptoideProduct;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    return-void
.end method
