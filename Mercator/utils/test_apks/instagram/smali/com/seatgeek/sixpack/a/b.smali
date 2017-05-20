.class public final enum Lcom/seatgeek/sixpack/a/b;
.super Ljava/lang/Enum;
.source "LogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seatgeek/sixpack/a/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seatgeek/sixpack/a/b;

.field public static final enum DEBUG:Lcom/seatgeek/sixpack/a/b;

.field public static final enum NONE:Lcom/seatgeek/sixpack/a/b;

.field public static final enum VERBOSE:Lcom/seatgeek/sixpack/a/b;


# instance fields
.field public final level:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 5
    new-instance v0, Lcom/seatgeek/sixpack/a/b;

    const-string v1, "VERBOSE"

    invoke-direct {v0, v1, v4, v5}, Lcom/seatgeek/sixpack/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seatgeek/sixpack/a/b;->VERBOSE:Lcom/seatgeek/sixpack/a/b;

    .line 6
    new-instance v0, Lcom/seatgeek/sixpack/a/b;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2, v3}, Lcom/seatgeek/sixpack/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seatgeek/sixpack/a/b;->DEBUG:Lcom/seatgeek/sixpack/a/b;

    .line 7
    new-instance v0, Lcom/seatgeek/sixpack/a/b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3, v2}, Lcom/seatgeek/sixpack/a/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/seatgeek/sixpack/a/b;->NONE:Lcom/seatgeek/sixpack/a/b;

    .line 4
    new-array v0, v5, [Lcom/seatgeek/sixpack/a/b;

    sget-object v1, Lcom/seatgeek/sixpack/a/b;->VERBOSE:Lcom/seatgeek/sixpack/a/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/seatgeek/sixpack/a/b;->DEBUG:Lcom/seatgeek/sixpack/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/seatgeek/sixpack/a/b;->NONE:Lcom/seatgeek/sixpack/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/seatgeek/sixpack/a/b;->$VALUES:[Lcom/seatgeek/sixpack/a/b;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcom/seatgeek/sixpack/a/b;->level:I

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seatgeek/sixpack/a/b;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/seatgeek/sixpack/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seatgeek/sixpack/a/b;

    return-object v0
.end method

.method public static values()[Lcom/seatgeek/sixpack/a/b;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/seatgeek/sixpack/a/b;->$VALUES:[Lcom/seatgeek/sixpack/a/b;

    invoke-virtual {v0}, [Lcom/seatgeek/sixpack/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seatgeek/sixpack/a/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .prologue
    .line 28
    iget v0, p0, Lcom/seatgeek/sixpack/a/b;->level:I

    sget-object v1, Lcom/seatgeek/sixpack/a/b;->VERBOSE:Lcom/seatgeek/sixpack/a/b;

    iget v1, v1, Lcom/seatgeek/sixpack/a/b;->level:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 32
    iget v0, p0, Lcom/seatgeek/sixpack/a/b;->level:I

    sget-object v1, Lcom/seatgeek/sixpack/a/b;->DEBUG:Lcom/seatgeek/sixpack/a/b;

    iget v1, v1, Lcom/seatgeek/sixpack/a/b;->level:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
