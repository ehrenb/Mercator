.class Lcom/localytics/android/LocationManager$2;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/localytics/android/Utils$Mapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationManager;->removeGeofences(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/localytics/android/Utils$Mapper",
        "<",
        "Lcom/localytics/android/CircularRegion;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationManager;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationManager;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/localytics/android/LocationManager$2;->this$0:Lcom/localytics/android/LocationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    check-cast p1, Lcom/localytics/android/CircularRegion;

    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationManager$2;->transform(Lcom/localytics/android/CircularRegion;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/localytics/android/CircularRegion;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/localytics/android/CircularRegion;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
