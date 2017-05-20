.class public final enum Lcom/facebook/l;
.super Ljava/lang/Enum;
.source "HttpMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/l;

.field public static final enum b:Lcom/facebook/l;

.field public static final enum c:Lcom/facebook/l;

.field private static final synthetic d:[Lcom/facebook/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/facebook/l;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/facebook/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/l;->a:Lcom/facebook/l;

    .line 35
    new-instance v0, Lcom/facebook/l;

    const-string v1, "POST"

    invoke-direct {v0, v1, v3}, Lcom/facebook/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/l;->b:Lcom/facebook/l;

    .line 40
    new-instance v0, Lcom/facebook/l;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/facebook/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/l;->c:Lcom/facebook/l;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/l;

    sget-object v1, Lcom/facebook/l;->a:Lcom/facebook/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/l;->b:Lcom/facebook/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/l;->c:Lcom/facebook/l;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/l;->d:[Lcom/facebook/l;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/l;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/l;

    return-object v0
.end method

.method public static values()[Lcom/facebook/l;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/l;->d:[Lcom/facebook/l;

    invoke-virtual {v0}, [Lcom/facebook/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/l;

    return-object v0
.end method
