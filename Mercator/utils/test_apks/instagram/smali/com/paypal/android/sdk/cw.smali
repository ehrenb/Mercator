.class public final enum Lcom/paypal/android/sdk/cw;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/cw;

.field private static enum b:Lcom/paypal/android/sdk/cw;

.field private static enum c:Lcom/paypal/android/sdk/cw;

.field private static enum d:Lcom/paypal/android/sdk/cw;

.field private static enum e:Lcom/paypal/android/sdk/cw;

.field private static enum f:Lcom/paypal/android/sdk/cw;

.field private static enum g:Lcom/paypal/android/sdk/cw;

.field private static enum h:Lcom/paypal/android/sdk/cw;

.field private static enum i:Lcom/paypal/android/sdk/cw;

.field private static final synthetic j:[Lcom/paypal/android/sdk/cw;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "AMEX"

    invoke-direct {v0, v1, v3}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->b:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "DINERSCLUB"

    invoke-direct {v0, v1, v4}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->c:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v5}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->d:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "JCB"

    invoke-direct {v0, v1, v6}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->e:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "MASTERCARD"

    invoke-direct {v0, v1, v7}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->f:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "VISA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->g:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "MAESTRO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->h:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->a:Lcom/paypal/android/sdk/cw;

    new-instance v0, Lcom/paypal/android/sdk/cw;

    const-string v1, "INSUFFICIENT_DIGITS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/paypal/android/sdk/cw;->i:Lcom/paypal/android/sdk/cw;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/paypal/android/sdk/cw;

    sget-object v1, Lcom/paypal/android/sdk/cw;->b:Lcom/paypal/android/sdk/cw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/paypal/android/sdk/cw;->c:Lcom/paypal/android/sdk/cw;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/cw;->d:Lcom/paypal/android/sdk/cw;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/cw;->e:Lcom/paypal/android/sdk/cw;

    aput-object v1, v0, v6

    sget-object v1, Lcom/paypal/android/sdk/cw;->f:Lcom/paypal/android/sdk/cw;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/paypal/android/sdk/cw;->g:Lcom/paypal/android/sdk/cw;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/paypal/android/sdk/cw;->h:Lcom/paypal/android/sdk/cw;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/paypal/android/sdk/cw;->a:Lcom/paypal/android/sdk/cw;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/paypal/android/sdk/cw;->i:Lcom/paypal/android/sdk/cw;

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/sdk/cw;->j:[Lcom/paypal/android/sdk/cw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/paypal/android/sdk/cw;
    .locals 5

    if-nez p0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/cw;->a:Lcom/paypal/android/sdk/cw;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/paypal/android/sdk/cw;->values()[Lcom/paypal/android/sdk/cw;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    sget-object v4, Lcom/paypal/android/sdk/cw;->a:Lcom/paypal/android/sdk/cw;

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/paypal/android/sdk/cw;->i:Lcom/paypal/android/sdk/cw;

    if-eq v0, v4, :cond_2

    invoke-virtual {v0}, Lcom/paypal/android/sdk/cw;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/paypal/android/sdk/cw;->a:Lcom/paypal/android/sdk/cw;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/cw;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/cw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/cw;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/cw;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/cw;->j:[Lcom/paypal/android/sdk/cw;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/cw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/cw;

    return-object v0
.end method
