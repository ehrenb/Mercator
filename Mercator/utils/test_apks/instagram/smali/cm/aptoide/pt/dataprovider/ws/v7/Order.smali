.class public final enum Lcm/aptoide/pt/dataprovider/ws/v7/Order;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/Order;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/Order;

.field public static final enum asc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

.field public static final enum desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

.field public static final enum rand:Lcm/aptoide/pt/dataprovider/ws/v7/Order;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    const-string v1, "asc"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->asc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    const-string v1, "desc"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    const-string v1, "rand"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/Order;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->rand:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->asc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->desc:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->rand:Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    aput-object v1, v0, v4

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/Order;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/Order;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/dataprovider/ws/v7/Order;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/Order;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    invoke-virtual {v0}, [Lcm/aptoide/pt/dataprovider/ws/v7/Order;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/dataprovider/ws/v7/Order;

    return-object v0
.end method
