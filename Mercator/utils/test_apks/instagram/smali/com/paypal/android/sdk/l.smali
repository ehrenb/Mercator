.class public final enum Lcom/paypal/android/sdk/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/paypal/android/sdk/l;

.field public static final enum b:Lcom/paypal/android/sdk/l;

.field public static final enum c:Lcom/paypal/android/sdk/l;

.field public static final enum d:Lcom/paypal/android/sdk/l;

.field public static final enum e:Lcom/paypal/android/sdk/l;

.field public static final enum f:Lcom/paypal/android/sdk/l;

.field public static final enum g:Lcom/paypal/android/sdk/l;

.field public static final h:Ljava/util/Collection;

.field public static final i:Ljava/util/Collection;

.field private static final synthetic l:[Lcom/paypal/android/sdk/l;


# instance fields
.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "FUTURE_PAYMENTS"

    const-string v2, "https://uri.paypal.com/services/payments/futurepayments"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->a:Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "PROFILE"

    const-string v2, "profile"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->b:Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "PAYPAL_ATTRIBUTES"

    const-string v2, "https://uri.paypal.com/services/paypalattributes"

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->c:Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "OPENID"

    const-string v2, "openid"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->d:Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "EMAIL"

    const-string v2, "email"

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->e:Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "ADDRESS"

    const/4 v2, 0x5

    const-string v3, "address"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->f:Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/l;

    const-string v1, "PHONE"

    const/4 v2, 0x6

    const-string v3, "phone"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/paypal/android/sdk/l;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/paypal/android/sdk/l;->g:Lcom/paypal/android/sdk/l;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/paypal/android/sdk/l;

    sget-object v1, Lcom/paypal/android/sdk/l;->a:Lcom/paypal/android/sdk/l;

    aput-object v1, v0, v5

    sget-object v1, Lcom/paypal/android/sdk/l;->b:Lcom/paypal/android/sdk/l;

    aput-object v1, v0, v4

    sget-object v1, Lcom/paypal/android/sdk/l;->c:Lcom/paypal/android/sdk/l;

    aput-object v1, v0, v6

    sget-object v1, Lcom/paypal/android/sdk/l;->d:Lcom/paypal/android/sdk/l;

    aput-object v1, v0, v7

    sget-object v1, Lcom/paypal/android/sdk/l;->e:Lcom/paypal/android/sdk/l;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/paypal/android/sdk/l;->f:Lcom/paypal/android/sdk/l;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/paypal/android/sdk/l;->g:Lcom/paypal/android/sdk/l;

    aput-object v2, v0, v1

    sput-object v0, Lcom/paypal/android/sdk/l;->l:[Lcom/paypal/android/sdk/l;

    new-instance v0, Lcom/paypal/android/sdk/m;

    invoke-direct {v0}, Lcom/paypal/android/sdk/m;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/l;->h:Ljava/util/Collection;

    new-instance v0, Lcom/paypal/android/sdk/n;

    invoke-direct {v0}, Lcom/paypal/android/sdk/n;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/l;->i:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/paypal/android/sdk/l;->j:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/paypal/android/sdk/l;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/paypal/android/sdk/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/paypal/android/sdk/l;->k:Z

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/paypal/android/sdk/l;
    .locals 1

    const-class v0, Lcom/paypal/android/sdk/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/paypal/android/sdk/l;

    return-object v0
.end method

.method public static values()[Lcom/paypal/android/sdk/l;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/l;->l:[Lcom/paypal/android/sdk/l;

    invoke-virtual {v0}, [Lcom/paypal/android/sdk/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/paypal/android/sdk/l;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/paypal/android/sdk/l;->j:Ljava/lang/String;

    return-object v0
.end method
