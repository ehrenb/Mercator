.class public final enum Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;
.super Ljava/lang/Enum;
.source "WidgetsArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

.field public static final enum APPS_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

.field public static final enum MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

.field public static final enum STORES_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

.field public static final enum STORES_RECOMMENDED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    const-string v1, "APPS_GROUP"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->APPS_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    const-string v1, "MY_STORES_SUBSCRIBED"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    const-string v1, "STORES_RECOMMENDED"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_RECOMMENDED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    const-string v1, "STORES_GROUP"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->APPS_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->MY_STORES_SUBSCRIBED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_RECOMMENDED:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->STORES_GROUP:Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    aput-object v1, v0, v5

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    invoke-virtual {v0}, [Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/dataprovider/ws/v7/store/WidgetsArgs$Key;

    return-object v0
.end method
