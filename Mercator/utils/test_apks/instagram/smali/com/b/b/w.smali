.class public final enum Lcom/b/b/w;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/b/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/b/w;

.field public static final enum b:Lcom/b/b/w;

.field public static final enum c:Lcom/b/b/w;

.field public static final enum d:Lcom/b/b/w;

.field public static final enum e:Lcom/b/b/w;

.field public static final enum f:Lcom/b/b/w;

.field public static final enum g:Lcom/b/b/w;

.field private static final synthetic i:[Lcom/b/b/w;


# instance fields
.field final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/b/b/w;

    const-string v1, "HW_MACHINE"

    invoke-direct {v0, v1, v4, v4}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->a:Lcom/b/b/w;

    .line 8
    new-instance v0, Lcom/b/b/w;

    const-string v1, "MODEL"

    invoke-direct {v0, v1, v5, v5}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->b:Lcom/b/b/w;

    .line 9
    new-instance v0, Lcom/b/b/w;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v6, v6}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->c:Lcom/b/b/w;

    .line 10
    new-instance v0, Lcom/b/b/w;

    const-string v1, "ID"

    invoke-direct {v0, v1, v7, v7}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->d:Lcom/b/b/w;

    .line 11
    new-instance v0, Lcom/b/b/w;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v8, v8}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->e:Lcom/b/b/w;

    .line 12
    new-instance v0, Lcom/b/b/w;

    const-string v1, "PRODUCT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->f:Lcom/b/b/w;

    .line 13
    new-instance v0, Lcom/b/b/w;

    const-string v1, "VERSION_RELEASE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/b/b/w;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/w;->g:Lcom/b/b/w;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/b/b/w;

    sget-object v1, Lcom/b/b/w;->a:Lcom/b/b/w;

    aput-object v1, v0, v4

    sget-object v1, Lcom/b/b/w;->b:Lcom/b/b/w;

    aput-object v1, v0, v5

    sget-object v1, Lcom/b/b/w;->c:Lcom/b/b/w;

    aput-object v1, v0, v6

    sget-object v1, Lcom/b/b/w;->d:Lcom/b/b/w;

    aput-object v1, v0, v7

    sget-object v1, Lcom/b/b/w;->e:Lcom/b/b/w;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/b/b/w;->f:Lcom/b/b/w;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/b/b/w;->g:Lcom/b/b/w;

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/b/w;->i:[Lcom/b/b/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/b/b/w;->h:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/b/w;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/b/b/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/b/w;

    return-object v0
.end method

.method public static values()[Lcom/b/b/w;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/b/b/w;->i:[Lcom/b/b/w;

    invoke-virtual {v0}, [Lcom/b/b/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/b/w;

    return-object v0
.end method
