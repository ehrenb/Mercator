.class public final enum Lcm/aptoide/pt/v8engine/payment/Authorization$Status;
.super Ljava/lang/Enum;
.source "Authorization.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/payment/Authorization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/payment/Authorization$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum ACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum CANCELLED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum INACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum INITIATED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum NONE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum PENDING:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum SESSION_EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

.field public static final enum UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 57
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->NONE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 58
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "INACTIVE"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 59
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->ACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 60
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "INITIATED"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INITIATED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 61
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "PENDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 62
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "CANCELLED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->CANCELLED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 63
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "EXPIRED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 64
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    const-string v1, "SESSION_EXPIRED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->SESSION_EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->NONE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->ACTIVE:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->INITIATED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->CANCELLED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->SESSION_EXPIRED:Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->$VALUES:[Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/Authorization$Status;
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/payment/Authorization$Status;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->$VALUES:[Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/payment/Authorization$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/payment/Authorization$Status;

    return-object v0
.end method
