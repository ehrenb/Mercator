.class public final enum Lcom/paypal/android/sdk/ba;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/ba;

.field public static final enum b:Lcom/paypal/android/sdk/ba;

.field public static final enum c:Lcom/paypal/android/sdk/ba;

.field public static final enum d:Lcom/paypal/android/sdk/ba;

.field public static final enum e:Lcom/paypal/android/sdk/ba;

.field private static final synthetic f:[Lcom/paypal/android/sdk/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/ba;

    const-string v1, "INTERNAL_SERVER_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ba;->a:Lcom/paypal/android/sdk/ba;

    new-instance v0, Lcom/paypal/android/sdk/ba;

    const-string v1, "SERVER_COMMUNICATION_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ba;->b:Lcom/paypal/android/sdk/ba;

    new-instance v0, Lcom/paypal/android/sdk/ba;

    const-string v1, "PARSE_RESPONSE_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ba;->c:Lcom/paypal/android/sdk/ba;

    new-instance v0, Lcom/paypal/android/sdk/ba;

    const-string v1, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ba;->d:Lcom/paypal/android/sdk/ba;

    new-instance v0, Lcom/paypal/android/sdk/ba;

    const-string v1, "DEVICE_OS_TOO_OLD"

    invoke-direct {v0, v1, v6}, Lcom/paypal/android/sdk/ba;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/ba;->e:Lcom/paypal/android/sdk/ba;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/paypal/android/sdk/ba;

    sget-object v1, Lcom/paypal/android/sdk/ba;->a:Lcom/paypal/android/sdk/ba;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/ba;->b:Lcom/paypal/android/sdk/ba;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/ba;->c:Lcom/paypal/android/sdk/ba;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/ba;->d:Lcom/paypal/android/sdk/ba;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/ba;->e:Lcom/paypal/android/sdk/ba;

    aput-object v1, v0, v6

    sput-object v0, Lcom/paypal/android/sdk/ba;->f:[Lcom/paypal/android/sdk/ba;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/ba;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/ba;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/ba;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/ba;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/ba;->f:[Lcom/paypal/android/sdk/ba;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/ba;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/ba;

    return-object v0
.end method
