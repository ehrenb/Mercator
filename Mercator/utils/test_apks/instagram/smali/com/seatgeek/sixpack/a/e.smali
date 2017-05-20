.class public final enum Lcom/seatgeek/sixpack/a/e;
.super Ljava/lang/Enum;
.source "PlatformLogger.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/seatgeek/sixpack/a/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/seatgeek/sixpack/a/e;

.field public static final enum INSTANCE:Lcom/seatgeek/sixpack/a/e;


# instance fields
.field private logger:Lcom/seatgeek/sixpack/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/seatgeek/sixpack/a/e;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/seatgeek/sixpack/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/seatgeek/sixpack/a/e;->INSTANCE:Lcom/seatgeek/sixpack/a/e;

    .line 3
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/seatgeek/sixpack/a/e;

    sget-object v1, Lcom/seatgeek/sixpack/a/e;->INSTANCE:Lcom/seatgeek/sixpack/a/e;

    aput-object v1, v0, v2

    sput-object v0, Lcom/seatgeek/sixpack/a/e;->$VALUES:[Lcom/seatgeek/sixpack/a/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    const/4 v0, 0x1

    .line 21
    :goto_0
    if-eqz v0, :cond_0

    new-instance v0, Lcom/seatgeek/sixpack/a/c;

    invoke-direct {v0}, Lcom/seatgeek/sixpack/a/c;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/seatgeek/sixpack/a/e;->logger:Lcom/seatgeek/sixpack/a/d;

    .line 22
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const/4 v0, 0x0

    goto :goto_0

    .line 21
    :cond_0
    new-instance v0, Lcom/seatgeek/sixpack/a/f;

    invoke-direct {v0}, Lcom/seatgeek/sixpack/a/f;-><init>()V

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/seatgeek/sixpack/a/e;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/seatgeek/sixpack/a/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/seatgeek/sixpack/a/e;

    return-object v0
.end method

.method public static values()[Lcom/seatgeek/sixpack/a/e;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/seatgeek/sixpack/a/e;->$VALUES:[Lcom/seatgeek/sixpack/a/e;

    invoke-virtual {v0}, [Lcom/seatgeek/sixpack/a/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/seatgeek/sixpack/a/e;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/seatgeek/sixpack/a/d;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/seatgeek/sixpack/a/e;->logger:Lcom/seatgeek/sixpack/a/d;

    return-object v0
.end method
