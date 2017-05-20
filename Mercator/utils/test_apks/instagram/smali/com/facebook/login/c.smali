.class public final enum Lcom/facebook/login/c;
.super Ljava/lang/Enum;
.source "LoginBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/login/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/login/c;

.field public static final enum b:Lcom/facebook/login/c;

.field public static final enum c:Lcom/facebook/login/c;

.field public static final enum d:Lcom/facebook/login/c;

.field public static final enum e:Lcom/facebook/login/c;

.field public static final enum f:Lcom/facebook/login/c;

.field private static final synthetic m:[Lcom/facebook/login/c;


# instance fields
.field private final g:Z

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:Z

.field private final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x4

    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/facebook/login/c;

    const-string v1, "NATIVE_WITH_FALLBACK"

    move v4, v3

    move v5, v3

    move v6, v2

    move v7, v3

    move v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/login/c;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v0, Lcom/facebook/login/c;->a:Lcom/facebook/login/c;

    .line 37
    new-instance v4, Lcom/facebook/login/c;

    const-string v5, "NATIVE_ONLY"

    move v6, v3

    move v7, v3

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v3

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/c;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/c;->b:Lcom/facebook/login/c;

    .line 42
    new-instance v4, Lcom/facebook/login/c;

    const-string v5, "KATANA_ONLY"

    move v6, v13

    move v7, v2

    move v8, v3

    move v9, v2

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/c;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/c;->c:Lcom/facebook/login/c;

    .line 47
    new-instance v4, Lcom/facebook/login/c;

    const-string v5, "WEB_ONLY"

    move v6, v14

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v3

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/c;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/c;->d:Lcom/facebook/login/c;

    .line 52
    new-instance v4, Lcom/facebook/login/c;

    const-string v5, "WEB_VIEW_ONLY"

    move v6, v15

    move v7, v2

    move v8, v2

    move v9, v3

    move v10, v2

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/c;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/c;->e:Lcom/facebook/login/c;

    .line 59
    new-instance v4, Lcom/facebook/login/c;

    const-string v5, "DEVICE_AUTH"

    const/4 v6, 0x5

    move v7, v2

    move v8, v2

    move v9, v2

    move v10, v3

    move v11, v2

    move v12, v2

    invoke-direct/range {v4 .. v12}, Lcom/facebook/login/c;-><init>(Ljava/lang/String;IZZZZZZ)V

    sput-object v4, Lcom/facebook/login/c;->f:Lcom/facebook/login/c;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/facebook/login/c;

    sget-object v1, Lcom/facebook/login/c;->a:Lcom/facebook/login/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/login/c;->b:Lcom/facebook/login/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/login/c;->c:Lcom/facebook/login/c;

    aput-object v1, v0, v13

    sget-object v1, Lcom/facebook/login/c;->d:Lcom/facebook/login/c;

    aput-object v1, v0, v14

    sget-object v1, Lcom/facebook/login/c;->e:Lcom/facebook/login/c;

    aput-object v1, v0, v15

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/login/c;->f:Lcom/facebook/login/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/login/c;->m:[Lcom/facebook/login/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZZZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 75
    iput-boolean p3, p0, Lcom/facebook/login/c;->g:Z

    .line 76
    iput-boolean p4, p0, Lcom/facebook/login/c;->h:Z

    .line 77
    iput-boolean p5, p0, Lcom/facebook/login/c;->i:Z

    .line 78
    iput-boolean p6, p0, Lcom/facebook/login/c;->j:Z

    .line 79
    iput-boolean p7, p0, Lcom/facebook/login/c;->k:Z

    .line 80
    iput-boolean p8, p0, Lcom/facebook/login/c;->l:Z

    .line 81
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/c;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/facebook/login/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/login/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/login/c;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/facebook/login/c;->m:[Lcom/facebook/login/c;

    invoke-virtual {v0}, [Lcom/facebook/login/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/login/c;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/facebook/login/c;->g:Z

    return v0
.end method

.method b()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/facebook/login/c;->h:Z

    return v0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/facebook/login/c;->i:Z

    return v0
.end method

.method d()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/facebook/login/c;->j:Z

    return v0
.end method

.method e()Z
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/facebook/login/c;->k:Z

    return v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/facebook/login/c;->l:Z

    return v0
.end method
