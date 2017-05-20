.class public final enum Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;
.super Ljava/lang/Enum;
.source "PaymentConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum CANCELED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum COMPLETED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum CREATED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum FAILED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum PENDING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum PROCESSING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

.field public static final enum UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "UNKNOWN_ERROR"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 64
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v4}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->CREATED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 65
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v5}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->PROCESSING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 66
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v6}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 67
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v7}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->COMPLETED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 68
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->FAILED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 69
    new-instance v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    const-string v1, "CANCELED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->CANCELED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->UNKNOWN_ERROR:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->CREATED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->PROCESSING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->PENDING:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->COMPLETED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->FAILED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->CANCELED:Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->$VALUES:[Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

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
    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->$VALUES:[Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/payment/PaymentConfirmation$Status;

    return-object v0
.end method
