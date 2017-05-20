.class public final enum Lio/realm/internal/f;
.super Ljava/lang/Enum;
.source "InvalidRow.java"

# interfaces
.implements Lio/realm/internal/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/realm/internal/f;",
        ">;",
        "Lio/realm/internal/l;"
    }
.end annotation


# static fields
.field public static final enum a:Lio/realm/internal/f;

.field private static final synthetic c:[Lio/realm/internal/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    new-instance v0, Lio/realm/internal/f;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lio/realm/internal/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/realm/internal/f;->a:Lio/realm/internal/f;

    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Lio/realm/internal/f;

    sget-object v1, Lio/realm/internal/f;->a:Lio/realm/internal/f;

    aput-object v1, v0, v2

    sput-object v0, Lio/realm/internal/f;->c:[Lio/realm/internal/f;

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
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private e()Ljava/lang/RuntimeException;
    .locals 2

    .prologue
    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object is no longer managed by Realm. Has it been deleted?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/realm/internal/f;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lio/realm/internal/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/realm/internal/f;

    return-object v0
.end method

.method public static values()[Lio/realm/internal/f;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lio/realm/internal/f;->c:[Lio/realm/internal/f;

    invoke-virtual {v0}, [Lio/realm/internal/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/realm/internal/f;

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(Ljava/lang/String;)J
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(JD)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(JF)V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(JJ)V
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(JLjava/util/Date;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(JZ)V
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(J[B)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public b()Lio/realm/internal/Table;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public b(JJ)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public b(J)Z
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public c()J
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public c(J)V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public d(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public e(J)Lio/realm/RealmFieldType;
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public f(J)J
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public g(J)Z
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public h(J)F
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public i(J)D
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public j(J)Ljava/util/Date;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public k(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public l(J)[B
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public m(J)Lio/realm/internal/LinkView;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public n(J)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lio/realm/internal/f;->e()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method
