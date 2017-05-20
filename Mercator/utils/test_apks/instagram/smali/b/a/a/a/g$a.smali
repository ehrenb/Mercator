.class final enum Lb/a/a/a/g$a;
.super Ljava/lang/Enum;
.source "DNSState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/g$a;

.field public static final enum b:Lb/a/a/a/g$a;

.field public static final enum c:Lb/a/a/a/g$a;

.field public static final enum d:Lb/a/a/a/g$a;

.field public static final enum e:Lb/a/a/a/g$a;

.field public static final enum f:Lb/a/a/a/g$a;

.field public static final enum g:Lb/a/a/a/g$a;

.field private static final synthetic h:[Lb/a/a/a/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 64
    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "probing"

    invoke-direct {v0, v1, v3}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->a:Lb/a/a/a/g$a;

    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "announcing"

    invoke-direct {v0, v1, v4}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->b:Lb/a/a/a/g$a;

    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "announced"

    invoke-direct {v0, v1, v5}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->c:Lb/a/a/a/g$a;

    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "canceling"

    invoke-direct {v0, v1, v6}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->d:Lb/a/a/a/g$a;

    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "canceled"

    invoke-direct {v0, v1, v7}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->e:Lb/a/a/a/g$a;

    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "closing"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->f:Lb/a/a/a/g$a;

    new-instance v0, Lb/a/a/a/g$a;

    const-string v1, "closed"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lb/a/a/a/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/a/a/a/g$a;->g:Lb/a/a/a/g$a;

    .line 63
    const/4 v0, 0x7

    new-array v0, v0, [Lb/a/a/a/g$a;

    sget-object v1, Lb/a/a/a/g$a;->a:Lb/a/a/a/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/a/a/g$a;->b:Lb/a/a/a/g$a;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/a/g$a;->c:Lb/a/a/a/g$a;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/g$a;->d:Lb/a/a/a/g$a;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/g$a;->e:Lb/a/a/a/g$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lb/a/a/a/g$a;->f:Lb/a/a/a/g$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lb/a/a/a/g$a;->g:Lb/a/a/a/g$a;

    aput-object v2, v0, v1

    sput-object v0, Lb/a/a/a/g$a;->h:[Lb/a/a/a/g$a;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/g$a;
    .locals 1

    .prologue
    .line 63
    const-class v0, Lb/a/a/a/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/g$a;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/g$a;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lb/a/a/a/g$a;->h:[Lb/a/a/a/g$a;

    invoke-virtual {v0}, [Lb/a/a/a/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/g$a;

    return-object v0
.end method
