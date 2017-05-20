.class public final enum Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;
.super Ljava/lang/Enum;
.source "StoreContext.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum community:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum first_install:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum home:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum store:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum store_extended:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum top:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

.field public static final enum top_oem:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "home"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->home:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "store"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "store_extended"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store_extended:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "community"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->community:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "top"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->top:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "top_oem"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->top_oem:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    new-instance v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    const-string v1, "first_install"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->first_install:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    .line 11
    const/4 v0, 0x7

    new-array v0, v0, [Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->home:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->store_extended:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->community:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->top:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->top_oem:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->first_install:Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

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

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->$VALUES:[Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    invoke-virtual {v0}, [Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/dataprovider/ws/v7/store/StoreContext;

    return-object v0
.end method
