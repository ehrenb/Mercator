.class public final enum Lcom/b/b/bb;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/b/b/bb;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/b/b/bb;

.field public static final enum b:Lcom/b/b/bb;

.field private static final synthetic e:[Lcom/b/b/bb;


# instance fields
.field public final c:I

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/b/b/bb;

    const-string v1, "DeviceId"

    invoke-direct {v0, v1, v3, v3}, Lcom/b/b/bb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/bb;->a:Lcom/b/b/bb;

    .line 5
    new-instance v0, Lcom/b/b/bb;

    const-string v1, "AndroidAdvertisingId"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v4, v2}, Lcom/b/b/bb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/b/b/bb;->b:Lcom/b/b/bb;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/b/b/bb;

    sget-object v1, Lcom/b/b/bb;->a:Lcom/b/b/bb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/b/b/bb;->b:Lcom/b/b/bb;

    aput-object v1, v0, v4

    sput-object v0, Lcom/b/b/bb;->e:[Lcom/b/b/bb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/b/b/bb;->c:I

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/bb;->d:Z

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/b/b/bb;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/b/b/bb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/b/b/bb;

    return-object v0
.end method

.method public static values()[Lcom/b/b/bb;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/b/b/bb;->e:[Lcom/b/b/bb;

    invoke-virtual {v0}, [Lcom/b/b/bb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/b/b/bb;

    return-object v0
.end method
