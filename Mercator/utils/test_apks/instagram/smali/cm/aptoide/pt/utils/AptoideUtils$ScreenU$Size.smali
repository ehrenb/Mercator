.class public final enum Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;
.super Ljava/lang/Enum;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils$ScreenU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Size"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

.field private static final TAG:Ljava/lang/String;

.field public static final enum large:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

.field public static final enum normal:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

.field public static final enum notfound:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

.field public static final enum small:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

.field public static final enum xlarge:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 544
    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    const-string v1, "notfound"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->notfound:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    const-string v1, "small"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->small:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    const-string v1, "normal"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->normal:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    const-string v1, "large"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->large:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    new-instance v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    const-string v1, "xlarge"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->xlarge:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    .line 543
    const/4 v0, 0x5

    new-array v0, v0, [Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->notfound:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->small:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->normal:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->large:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->xlarge:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    aput-object v1, v0, v6

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->$VALUES:[Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    .line 546
    const-class v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->TAG:Ljava/lang/String;

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
    .line 543
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static lookup(Ljava/lang/String;)Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;
    .locals 2

    .prologue
    .line 550
    :try_start_0
    invoke-static {p0}, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->valueOf(Ljava/lang/String;)Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 553
    :goto_0
    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    sget-object v1, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->notfound:Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;
    .locals 1

    .prologue
    .line 543
    const-class v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->$VALUES:[Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    invoke-virtual {v0}, [Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/utils/AptoideUtils$ScreenU$Size;

    return-object v0
.end method
