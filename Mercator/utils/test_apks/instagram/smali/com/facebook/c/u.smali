.class public final enum Lcom/facebook/c/u;
.super Ljava/lang/Enum;
.source "LoginAuthorizationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/c/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/c/u;

.field public static final enum b:Lcom/facebook/c/u;

.field private static final synthetic c:[Lcom/facebook/c/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/facebook/c/u;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/facebook/c/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/u;->a:Lcom/facebook/c/u;

    .line 30
    new-instance v0, Lcom/facebook/c/u;

    const-string v1, "PUBLISH"

    invoke-direct {v0, v1, v3}, Lcom/facebook/c/u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/c/u;->b:Lcom/facebook/c/u;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/c/u;

    sget-object v1, Lcom/facebook/c/u;->a:Lcom/facebook/c/u;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/c/u;->b:Lcom/facebook/c/u;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/c/u;->c:[Lcom/facebook/c/u;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/c/u;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/facebook/c/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/u;

    return-object v0
.end method

.method public static values()[Lcom/facebook/c/u;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/c/u;->c:[Lcom/facebook/c/u;

    invoke-virtual {v0}, [Lcom/facebook/c/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/c/u;

    return-object v0
.end method
