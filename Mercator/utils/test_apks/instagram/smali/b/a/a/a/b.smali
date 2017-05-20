.class public final enum Lb/a/a/a/b;
.super Ljava/lang/Enum;
.source "DNSLabel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lb/a/a/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lb/a/a/a/b;

.field public static final enum b:Lb/a/a/a/b;

.field public static final enum c:Lb/a/a/a/b;

.field public static final enum d:Lb/a/a/a/b;

.field private static final synthetic g:[Lb/a/a/a/b;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lb/a/a/a/b;

    const-string v1, "Unknown"

    const-string v2, ""

    const/16 v3, 0x80

    invoke-direct {v0, v1, v4, v2, v3}, Lb/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    .line 19
    new-instance v0, Lb/a/a/a/b;

    const-string v1, "Standard"

    const-string v2, "standard label"

    invoke-direct {v0, v1, v5, v2, v4}, Lb/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/b;->b:Lb/a/a/a/b;

    .line 23
    new-instance v0, Lb/a/a/a/b;

    const-string v1, "Compressed"

    const-string v2, "compressed label"

    const/16 v3, 0xc0

    invoke-direct {v0, v1, v6, v2, v3}, Lb/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/b;->c:Lb/a/a/a/b;

    .line 27
    new-instance v0, Lb/a/a/a/b;

    const-string v1, "Extended"

    const-string v2, "extended label"

    const/16 v3, 0x40

    invoke-direct {v0, v1, v7, v2, v3}, Lb/a/a/a/b;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lb/a/a/a/b;->d:Lb/a/a/a/b;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lb/a/a/a/b;

    sget-object v1, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/a/a/b;->b:Lb/a/a/a/b;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/a/a/b;->c:Lb/a/a/a/b;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/a/a/b;->d:Lb/a/a/a/b;

    aput-object v1, v0, v7

    sput-object v0, Lb/a/a/a/b;->g:[Lb/a/a/a/b;

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
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lb/a/a/a/b;->e:Ljava/lang/String;

    .line 41
    iput p4, p0, Lb/a/a/a/b;->f:I

    .line 42
    return-void
.end method

.method public static a(I)Lb/a/a/a/b;
    .locals 6

    .prologue
    .line 67
    and-int/lit16 v2, p0, 0xc0

    .line 68
    invoke-static {}, Lb/a/a/a/b;->values()[Lb/a/a/a/b;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 69
    iget v5, v0, Lb/a/a/a/b;->f:I

    if-ne v5, v2, :cond_0

    .line 71
    :goto_1
    return-object v0

    .line 68
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 71
    :cond_1
    sget-object v0, Lb/a/a/a/b;->a:Lb/a/a/a/b;

    goto :goto_1
.end method

.method public static b(I)I
    .locals 1

    .prologue
    .line 79
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/a/a/b;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lb/a/a/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lb/a/a/a/b;

    return-object v0
.end method

.method public static values()[Lb/a/a/a/b;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lb/a/a/a/b;->g:[Lb/a/a/a/b;

    invoke-virtual {v0}, [Lb/a/a/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/a/a/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lb/a/a/a/b;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lb/a/a/a/b;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/a/b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
