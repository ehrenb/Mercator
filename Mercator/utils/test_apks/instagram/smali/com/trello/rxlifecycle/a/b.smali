.class public final enum Lcom/trello/rxlifecycle/a/b;
.super Ljava/lang/Enum;
.source "FragmentEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/trello/rxlifecycle/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/trello/rxlifecycle/a/b;

.field public static final enum b:Lcom/trello/rxlifecycle/a/b;

.field public static final enum c:Lcom/trello/rxlifecycle/a/b;

.field public static final enum d:Lcom/trello/rxlifecycle/a/b;

.field public static final enum e:Lcom/trello/rxlifecycle/a/b;

.field public static final enum f:Lcom/trello/rxlifecycle/a/b;

.field public static final enum g:Lcom/trello/rxlifecycle/a/b;

.field public static final enum h:Lcom/trello/rxlifecycle/a/b;

.field public static final enum i:Lcom/trello/rxlifecycle/a/b;

.field public static final enum j:Lcom/trello/rxlifecycle/a/b;

.field private static final synthetic k:[Lcom/trello/rxlifecycle/a/b;


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
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "ATTACH"

    invoke-direct {v0, v1, v3}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->a:Lcom/trello/rxlifecycle/a/b;

    .line 23
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "CREATE"

    invoke-direct {v0, v1, v4}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->b:Lcom/trello/rxlifecycle/a/b;

    .line 24
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "CREATE_VIEW"

    invoke-direct {v0, v1, v5}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->c:Lcom/trello/rxlifecycle/a/b;

    .line 25
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "START"

    invoke-direct {v0, v1, v6}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->d:Lcom/trello/rxlifecycle/a/b;

    .line 26
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v7}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->e:Lcom/trello/rxlifecycle/a/b;

    .line 27
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "PAUSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->f:Lcom/trello/rxlifecycle/a/b;

    .line 28
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "STOP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->g:Lcom/trello/rxlifecycle/a/b;

    .line 29
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "DESTROY_VIEW"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    .line 30
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "DESTROY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->i:Lcom/trello/rxlifecycle/a/b;

    .line 31
    new-instance v0, Lcom/trello/rxlifecycle/a/b;

    const-string v1, "DETACH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/trello/rxlifecycle/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->j:Lcom/trello/rxlifecycle/a/b;

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/trello/rxlifecycle/a/b;

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->a:Lcom/trello/rxlifecycle/a/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->b:Lcom/trello/rxlifecycle/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->c:Lcom/trello/rxlifecycle/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->d:Lcom/trello/rxlifecycle/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/trello/rxlifecycle/a/b;->e:Lcom/trello/rxlifecycle/a/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/trello/rxlifecycle/a/b;->f:Lcom/trello/rxlifecycle/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/trello/rxlifecycle/a/b;->g:Lcom/trello/rxlifecycle/a/b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/trello/rxlifecycle/a/b;->h:Lcom/trello/rxlifecycle/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/trello/rxlifecycle/a/b;->i:Lcom/trello/rxlifecycle/a/b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/trello/rxlifecycle/a/b;->j:Lcom/trello/rxlifecycle/a/b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/trello/rxlifecycle/a/b;->k:[Lcom/trello/rxlifecycle/a/b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/trello/rxlifecycle/a/b;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/trello/rxlifecycle/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/trello/rxlifecycle/a/b;

    return-object v0
.end method

.method public static values()[Lcom/trello/rxlifecycle/a/b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/trello/rxlifecycle/a/b;->k:[Lcom/trello/rxlifecycle/a/b;

    invoke-virtual {v0}, [Lcom/trello/rxlifecycle/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/trello/rxlifecycle/a/b;

    return-object v0
.end method
