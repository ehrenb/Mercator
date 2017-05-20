.class final enum Lcom/facebook/a/h;
.super Ljava/lang/Enum;
.source "FlushReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/a/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/a/h;

.field public static final enum b:Lcom/facebook/a/h;

.field public static final enum c:Lcom/facebook/a/h;

.field public static final enum d:Lcom/facebook/a/h;

.field public static final enum e:Lcom/facebook/a/h;

.field public static final enum f:Lcom/facebook/a/h;

.field private static final synthetic g:[Lcom/facebook/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/facebook/a/h;

    const-string v1, "EXPLICIT"

    invoke-direct {v0, v1, v3}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/h;->a:Lcom/facebook/a/h;

    .line 25
    new-instance v0, Lcom/facebook/a/h;

    const-string v1, "TIMER"

    invoke-direct {v0, v1, v4}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/h;->b:Lcom/facebook/a/h;

    .line 26
    new-instance v0, Lcom/facebook/a/h;

    const-string v1, "SESSION_CHANGE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/h;->c:Lcom/facebook/a/h;

    .line 27
    new-instance v0, Lcom/facebook/a/h;

    const-string v1, "PERSISTED_EVENTS"

    invoke-direct {v0, v1, v6}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/h;->d:Lcom/facebook/a/h;

    .line 28
    new-instance v0, Lcom/facebook/a/h;

    const-string v1, "EVENT_THRESHOLD"

    invoke-direct {v0, v1, v7}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/h;->e:Lcom/facebook/a/h;

    .line 29
    new-instance v0, Lcom/facebook/a/h;

    const-string v1, "EAGER_FLUSHING_EVENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/facebook/a/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/a/h;->f:Lcom/facebook/a/h;

    .line 23
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/a/h;

    sget-object v1, Lcom/facebook/a/h;->a:Lcom/facebook/a/h;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/a/h;->b:Lcom/facebook/a/h;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/a/h;->c:Lcom/facebook/a/h;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/a/h;->d:Lcom/facebook/a/h;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/a/h;->e:Lcom/facebook/a/h;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/a/h;->f:Lcom/facebook/a/h;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/a/h;->g:[Lcom/facebook/a/h;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/a/h;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/facebook/a/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/a/h;

    return-object v0
.end method

.method public static values()[Lcom/facebook/a/h;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/facebook/a/h;->g:[Lcom/facebook/a/h;

    invoke-virtual {v0}, [Lcom/facebook/a/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/a/h;

    return-object v0
.end method
