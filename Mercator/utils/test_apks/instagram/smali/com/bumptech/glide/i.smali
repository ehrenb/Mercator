.class public final enum Lcom/bumptech/glide/i;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/i;

.field public static final enum b:Lcom/bumptech/glide/i;

.field public static final enum c:Lcom/bumptech/glide/i;

.field public static final enum d:Lcom/bumptech/glide/i;

.field public static final enum e:Lcom/bumptech/glide/i;

.field private static final synthetic f:[Lcom/bumptech/glide/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/bumptech/glide/i;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/i;

    .line 10
    new-instance v0, Lcom/bumptech/glide/i;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i;

    .line 11
    new-instance v0, Lcom/bumptech/glide/i;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/i;

    .line 12
    new-instance v0, Lcom/bumptech/glide/i;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v5}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i;

    new-instance v0, Lcom/bumptech/glide/i;

    const-string v1, "priority"

    invoke-direct {v0, v1, v6}, Lcom/bumptech/glide/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/i;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/i;

    sget-object v1, Lcom/bumptech/glide/i;->a:Lcom/bumptech/glide/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/i;->b:Lcom/bumptech/glide/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/i;->c:Lcom/bumptech/glide/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/i;->d:Lcom/bumptech/glide/i;

    aput-object v1, v0, v5

    sget-object v1, Lcom/bumptech/glide/i;->e:Lcom/bumptech/glide/i;

    aput-object v1, v0, v6

    sput-object v0, Lcom/bumptech/glide/i;->f:[Lcom/bumptech/glide/i;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/bumptech/glide/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/i;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/bumptech/glide/i;->f:[Lcom/bumptech/glide/i;

    invoke-virtual {v0}, [Lcom/bumptech/glide/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/i;

    return-object v0
.end method
