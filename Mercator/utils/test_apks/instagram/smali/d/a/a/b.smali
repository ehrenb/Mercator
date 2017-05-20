.class public final enum Ld/a/a/b;
.super Ljava/lang/Enum;
.source "Level.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ld/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ld/a/a/b;

.field public static final enum b:Ld/a/a/b;

.field public static final enum c:Ld/a/a/b;

.field public static final enum d:Ld/a/a/b;

.field public static final enum e:Ld/a/a/b;

.field private static final synthetic h:[Ld/a/a/b;


# instance fields
.field private f:I

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Ld/a/a/b;

    const-string v1, "ERROR"

    const/16 v2, 0x28

    const-string v3, "ERROR"

    invoke-direct {v0, v1, v4, v2, v3}, Ld/a/a/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ld/a/a/b;->a:Ld/a/a/b;

    new-instance v0, Ld/a/a/b;

    const-string v1, "WARN"

    const/16 v2, 0x1e

    const-string v3, "WARN"

    invoke-direct {v0, v1, v5, v2, v3}, Ld/a/a/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ld/a/a/b;->b:Ld/a/a/b;

    new-instance v0, Ld/a/a/b;

    const-string v1, "INFO"

    const/16 v2, 0x14

    const-string v3, "INFO"

    invoke-direct {v0, v1, v6, v2, v3}, Ld/a/a/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ld/a/a/b;->c:Ld/a/a/b;

    new-instance v0, Ld/a/a/b;

    const-string v1, "DEBUG"

    const/16 v2, 0xa

    const-string v3, "DEBUG"

    invoke-direct {v0, v1, v7, v2, v3}, Ld/a/a/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ld/a/a/b;->d:Ld/a/a/b;

    new-instance v0, Ld/a/a/b;

    const-string v1, "TRACE"

    const-string v2, "TRACE"

    invoke-direct {v0, v1, v8, v4, v2}, Ld/a/a/b;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Ld/a/a/b;->e:Ld/a/a/b;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Ld/a/a/b;

    sget-object v1, Ld/a/a/b;->a:Ld/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Ld/a/a/b;->b:Ld/a/a/b;

    aput-object v1, v0, v5

    sget-object v1, Ld/a/a/b;->c:Ld/a/a/b;

    aput-object v1, v0, v6

    sget-object v1, Ld/a/a/b;->d:Ld/a/a/b;

    aput-object v1, v0, v7

    sget-object v1, Ld/a/a/b;->e:Ld/a/a/b;

    aput-object v1, v0, v8

    sput-object v0, Ld/a/a/b;->h:[Ld/a/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Ld/a/a/b;->f:I

    .line 23
    iput-object p4, p0, Ld/a/a/b;->g:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ld/a/a/b;
    .locals 1

    .prologue
    .line 14
    const-class v0, Ld/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ld/a/a/b;

    return-object v0
.end method

.method public static values()[Ld/a/a/b;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Ld/a/a/b;->h:[Ld/a/a/b;

    invoke-virtual {v0}, [Ld/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ld/a/a/b;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Ld/a/a/b;->g:Ljava/lang/String;

    return-object v0
.end method
