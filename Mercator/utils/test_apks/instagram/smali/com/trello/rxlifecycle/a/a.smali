.class public final enum Lcom/trello/rxlifecycle/a/a;
.super Ljava/lang/Enum;
.source "ActivityEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/trello/rxlifecycle/a/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/trello/rxlifecycle/a/a;

.field public static final enum b:Lcom/trello/rxlifecycle/a/a;

.field public static final enum c:Lcom/trello/rxlifecycle/a/a;

.field public static final enum d:Lcom/trello/rxlifecycle/a/a;

.field public static final enum e:Lcom/trello/rxlifecycle/a/a;

.field public static final enum f:Lcom/trello/rxlifecycle/a/a;

.field private static final synthetic g:[Lcom/trello/rxlifecycle/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 22
    new-instance v0, Lcom/trello/rxlifecycle/a/a;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v3}, Lcom/trello/rxlifecycle/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->a:Lcom/trello/rxlifecycle/a/a;

    .line 23
    new-instance v0, Lcom/trello/rxlifecycle/a/a;

    const-string v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/trello/rxlifecycle/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->b:Lcom/trello/rxlifecycle/a/a;

    .line 24
    new-instance v0, Lcom/trello/rxlifecycle/a/a;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v5}, Lcom/trello/rxlifecycle/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->c:Lcom/trello/rxlifecycle/a/a;

    .line 25
    new-instance v0, Lcom/trello/rxlifecycle/a/a;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v6}, Lcom/trello/rxlifecycle/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->d:Lcom/trello/rxlifecycle/a/a;

    .line 26
    new-instance v0, Lcom/trello/rxlifecycle/a/a;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v7}, Lcom/trello/rxlifecycle/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->e:Lcom/trello/rxlifecycle/a/a;

    .line 27
    new-instance v0, Lcom/trello/rxlifecycle/a/a;

    const-string v1, "DESTROY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/a/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->f:Lcom/trello/rxlifecycle/a/a;

    .line 20
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/trello/rxlifecycle/a/a;

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->a:Lcom/trello/rxlifecycle/a/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->b:Lcom/trello/rxlifecycle/a/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->c:Lcom/trello/rxlifecycle/a/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->d:Lcom/trello/rxlifecycle/a/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/trello/rxlifecycle/a/a;->e:Lcom/trello/rxlifecycle/a/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/trello/rxlifecycle/a/a;->f:Lcom/trello/rxlifecycle/a/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/trello/rxlifecycle/a/a;->g:[Lcom/trello/rxlifecycle/a/a;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle/a/a;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/trello/rxlifecycle/a/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/trello/rxlifecycle/a/a;

    return-object v0
.end method

.method public static values()[Lcom/trello/rxlifecycle/a/a;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/trello/rxlifecycle/a/a;->g:[Lcom/trello/rxlifecycle/a/a;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle/a/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle/a/a;

    return-object v0
.end method
