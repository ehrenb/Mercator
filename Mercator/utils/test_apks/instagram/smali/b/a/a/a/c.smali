.class public final enum Lb/a/a/a/c;
.super Ljava/lang/Enum;
.source "DNSOptionCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/c;

.field public static final enum b:Lb/a/a/a/c;

.field public static final enum c:Lb/a/a/a/c;

.field public static final enum d:Lb/a/a/a/c;

.field public static final enum e:Lb/a/a/a/c;

.field private static final synthetic h:[Lb/a/a/a/c;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 16
    new-instance v0, Lb/a/a/a/c;

    const-string v1, "Unknown"

    const-string v2, "Unknown"

    const v3, 0xffff

    invoke-direct {v0, v1, v8, v2, v3}, Lb/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    .line 20
    new-instance v0, Lb/a/a/a/c;

    const-string v1, "LLQ"

    const-string v2, "LLQ"

    invoke-direct {v0, v1, v4, v2, v4}, Lb/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/c;->b:Lb/a/a/a/c;

    .line 24
    new-instance v0, Lb/a/a/a/c;

    const-string v1, "UL"

    const-string v2, "UL"

    invoke-direct {v0, v1, v5, v2, v5}, Lb/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/c;->c:Lb/a/a/a/c;

    .line 28
    new-instance v0, Lb/a/a/a/c;

    const-string v1, "NSID"

    const-string v2, "NSID"

    invoke-direct {v0, v1, v6, v2, v6}, Lb/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/c;->d:Lb/a/a/a/c;

    .line 32
    new-instance v0, Lb/a/a/a/c;

    const-string v1, "Owner"

    const-string v2, "Owner"

    invoke-direct {v0, v1, v7, v2, v7}, Lb/a/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/c;->e:Lb/a/a/a/c;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lb/a/a/a/c;

    sget-object v1, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    aput-object v1, v0, v8

    sget-object v1, Lb/a/a/a/c;->b:Lb/a/a/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/a/c;->c:Lb/a/a/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/c;->d:Lb/a/a/a/c;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/c;->e:Lb/a/a/a/c;

    aput-object v1, v0, v7

    sput-object v0, Lb/a/a/a/c;->h:[Lb/a/a/a/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput-object p3, p0, Lb/a/a/a/c;->f:Ljava/lang/String;

    .line 40
    iput p4, p0, Lb/a/a/a/c;->g:I

    .line 41
    return-void
.end method

.method public static a(I)Lb/a/a/a/c;
    .locals 5

    .prologue
    .line 66
    .line 67
    invoke-static {}, Lb/a/a/a/c;->values()[Lb/a/a/a/c;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 68
    iget v4, v0, Lb/a/a/a/c;->g:I

    if-ne v4, p0, :cond_0

    .line 70
    :goto_1
    return-object v0

    .line 67
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 70
    :cond_1
    sget-object v0, Lb/a/a/a/c;->a:Lb/a/a/a/c;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/c;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lb/a/a/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/c;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/c;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lb/a/a/a/c;->h:[Lb/a/a/a/c;

    invoke-virtual {v0}, [Lb/a/a/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lb/a/a/a/c;->g:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/c;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/c;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
