.class Lcom/localytics/android/LocationHandler$12;
.super Ljava/lang/Object;
.source "LocationHandler.java"

# interfaces
.implements Lcom/localytics/android/BaseProvider$InClauseBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocationHandler;->_removeDeactivatedGeofences(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/localytics/android/BaseProvider$InClauseBuilder",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocationHandler;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocationHandler;)V
    .locals 0

    .prologue
    .line 615
    iput-object p1, p0, Lcom/localytics/android/LocationHandler$12;->this$0:Lcom/localytics/android/LocationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 615
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/localytics/android/LocationHandler$12;->getValue(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 619
    const-string v0, "\'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "identifier"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
