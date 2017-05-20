.class public final enum Lcom/paypal/android/sdk/cu;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/cu;

.field public static final enum b:Lcom/paypal/android/sdk/cu;

.field private static final synthetic c:[Lcom/paypal/android/sdk/cu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/paypal/android/sdk/cu;

    const-string v1, "token"

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cu;->a:Lcom/paypal/android/sdk/cu;

    new-instance v0, Lcom/paypal/android/sdk/cu;

    const-string v1, "code"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/cu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cu;->b:Lcom/paypal/android/sdk/cu;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/paypal/android/sdk/cu;

    sget-object v1, Lcom/paypal/android/sdk/cu;->a:Lcom/paypal/android/sdk/cu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/paypal/android/sdk/cu;->b:Lcom/paypal/android/sdk/cu;

    aput-object v1, v0, v3

    sput-object v0, Lcom/paypal/android/sdk/cu;->c:[Lcom/paypal/android/sdk/cu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/cu;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/cu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cu;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/cu;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/cu;->c:[Lcom/paypal/android/sdk/cu;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/cu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/cu;

    return-object v0
.end method
