.class public final enum Lcom/facebook/FacebookRequestError$a;
.super Ljava/lang/Enum;
.source "FacebookRequestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/FacebookRequestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/FacebookRequestError$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/FacebookRequestError$a;

.field public static final enum b:Lcom/facebook/FacebookRequestError$a;

.field public static final enum c:Lcom/facebook/FacebookRequestError$a;

.field private static final synthetic d:[Lcom/facebook/FacebookRequestError$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 492
    new-instance v0, Lcom/facebook/FacebookRequestError$a;

    const-string v1, "LOGIN_RECOVERABLE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/FacebookRequestError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$a;->a:Lcom/facebook/FacebookRequestError$a;

    .line 497
    new-instance v0, Lcom/facebook/FacebookRequestError$a;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/FacebookRequestError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$a;->b:Lcom/facebook/FacebookRequestError$a;

    .line 502
    new-instance v0, Lcom/facebook/FacebookRequestError$a;

    const-string v1, "TRANSIENT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/FacebookRequestError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/FacebookRequestError$a;->c:Lcom/facebook/FacebookRequestError$a;

    .line 485
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/FacebookRequestError$a;

    sget-object v1, Lcom/facebook/FacebookRequestError$a;->a:Lcom/facebook/FacebookRequestError$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/FacebookRequestError$a;->b:Lcom/facebook/FacebookRequestError$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/FacebookRequestError$a;->c:Lcom/facebook/FacebookRequestError$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/FacebookRequestError$a;->d:[Lcom/facebook/FacebookRequestError$a;

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
    .line 485
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/FacebookRequestError$a;
    .locals 1

    .prologue
    .line 485
    const-class v0, Lcom/facebook/FacebookRequestError$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookRequestError$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/FacebookRequestError$a;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/facebook/FacebookRequestError$a;->d:[Lcom/facebook/FacebookRequestError$a;

    invoke-virtual {v0}, [Lcom/facebook/FacebookRequestError$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/FacebookRequestError$a;

    return-object v0
.end method
