.class public enum Lcom/bumptech/glide/load/b/c/a$c;
.super Ljava/lang/Enum;
.source "FifoPriorityThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bumptech/glide/load/b/c/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bumptech/glide/load/b/c/a$c;

.field public static final enum b:Lcom/bumptech/glide/load/b/c/a$c;

.field public static final enum c:Lcom/bumptech/glide/load/b/c/a$c;

.field private static final synthetic d:[Lcom/bumptech/glide/load/b/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$c;

    const-string v1, "IGNORE"

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$c;->a:Lcom/bumptech/glide/load/b/c/a$c;

    .line 33
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$c$1;

    const-string v1, "LOG"

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/b/c/a$c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$c;->b:Lcom/bumptech/glide/load/b/c/a$c;

    .line 42
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$c$2;

    const-string v1, "THROW"

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/b/c/a$c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$c;->c:Lcom/bumptech/glide/load/b/c/a$c;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/b/c/a$c;

    sget-object v1, Lcom/bumptech/glide/load/b/c/a$c;->a:Lcom/bumptech/glide/load/b/c/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/b/c/a$c;->b:Lcom/bumptech/glide/load/b/c/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/b/c/a$c;->c:Lcom/bumptech/glide/load/b/c/a$c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$c;->d:[Lcom/bumptech/glide/load/b/c/a$c;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/bumptech/glide/load/b/c/a$1;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/c/a$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/b/c/a$c;
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/bumptech/glide/load/b/c/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/c/a$c;

    return-object v0
.end method

.method public static values()[Lcom/bumptech/glide/load/b/c/a$c;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/bumptech/glide/load/b/c/a$c;->d:[Lcom/bumptech/glide/load/b/c/a$c;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/b/c/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/b/c/a$c;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method
