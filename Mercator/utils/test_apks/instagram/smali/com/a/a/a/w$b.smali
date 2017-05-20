.class final enum Lcom/a/a/a/w$b;
.super Ljava/lang/Enum;
.source "SessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/a/a/a/w$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/a/a/a/w$b;

.field public static final enum b:Lcom/a/a/a/w$b;

.field public static final enum c:Lcom/a/a/a/w$b;

.field public static final enum d:Lcom/a/a/a/w$b;

.field public static final enum e:Lcom/a/a/a/w$b;

.field public static final enum f:Lcom/a/a/a/w$b;

.field public static final enum g:Lcom/a/a/a/w$b;

.field public static final enum h:Lcom/a/a/a/w$b;

.field private static final synthetic i:[Lcom/a/a/a/w$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->a:Lcom/a/a/a/w$b;

    .line 17
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "RESUME"

    invoke-direct {v0, v1, v4}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->b:Lcom/a/a/a/w$b;

    .line 18
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v5}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->c:Lcom/a/a/a/w$b;

    .line 19
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v6}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->d:Lcom/a/a/a/w$b;

    .line 20
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "CRASH"

    invoke-direct {v0, v1, v7}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->e:Lcom/a/a/a/w$b;

    .line 21
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "INSTALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->f:Lcom/a/a/a/w$b;

    .line 22
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->g:Lcom/a/a/a/w$b;

    .line 23
    new-instance v0, Lcom/a/a/a/w$b;

    const-string v1, "PREDEFINED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/a/a/a/w$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/a/a/a/w$b;->h:Lcom/a/a/a/w$b;

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/a/a/a/w$b;

    sget-object v1, Lcom/a/a/a/w$b;->a:Lcom/a/a/a/w$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/a/a/a/w$b;->b:Lcom/a/a/a/w$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/a/a/a/w$b;->c:Lcom/a/a/a/w$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/a/a/a/w$b;->d:Lcom/a/a/a/w$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/a/a/a/w$b;->e:Lcom/a/a/a/w$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/a/a/a/w$b;->f:Lcom/a/a/a/w$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/a/a/a/w$b;->g:Lcom/a/a/a/w$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/a/a/a/w$b;->h:Lcom/a/a/a/w$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/a/a/a/w$b;->i:[Lcom/a/a/a/w$b;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/a/a/a/w$b;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/a/a/a/w$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/a/a/a/w$b;

    return-object v0
.end method

.method public static values()[Lcom/a/a/a/w$b;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/a/a/a/w$b;->i:[Lcom/a/a/a/w$b;

    invoke-virtual {v0}, [Lcom/a/a/a/w$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/a/a/w$b;

    return-object v0
.end method
