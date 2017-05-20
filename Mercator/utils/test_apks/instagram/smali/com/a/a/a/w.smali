.class final Lcom/a/a/a/w;
.super Ljava/lang/Object;
.source "SessionEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a/w$1;,
        Lcom/a/a/a/w$a;,
        Lcom/a/a/a/w$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/a/a/a/x;

.field public final b:J

.field public final c:Lcom/a/a/a/w$b;

.field public final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/a/a/a/x;JLcom/a/a/a/w$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/a/x;",
            "J",
            "Lcom/a/a/a/w$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/a/a/a/w;->a:Lcom/a/a/a/x;

    .line 78
    iput-wide p2, p0, Lcom/a/a/a/w;->b:J

    .line 79
    iput-object p4, p0, Lcom/a/a/a/w;->c:Lcom/a/a/a/w$b;

    .line 80
    iput-object p5, p0, Lcom/a/a/a/w;->d:Ljava/util/Map;

    .line 81
    iput-object p6, p0, Lcom/a/a/a/w;->e:Ljava/lang/String;

    .line 82
    iput-object p7, p0, Lcom/a/a/a/w;->f:Ljava/util/Map;

    .line 83
    iput-object p8, p0, Lcom/a/a/a/w;->g:Ljava/lang/String;

    .line 84
    iput-object p9, p0, Lcom/a/a/a/w;->h:Ljava/util/Map;

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/x;JLcom/a/a/a/w$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/a/a/a/w$1;)V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p9}, Lcom/a/a/a/w;-><init>(Lcom/a/a/a/x;JLcom/a/a/a/w$b;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static a(J)Lcom/a/a/a/w$a;
    .locals 4

    .prologue
    .line 44
    new-instance v0, Lcom/a/a/a/w$a;

    sget-object v1, Lcom/a/a/a/w$b;->f:Lcom/a/a/a/w$b;

    invoke-direct {v0, v1}, Lcom/a/a/a/w$a;-><init>(Lcom/a/a/a/w$b;)V

    const-string v1, "installedAt"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/w$a;->a(Ljava/util/Map;)Lcom/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/a/a/a/k;)Lcom/a/a/a/w$a;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/a/a/a/w$a;

    sget-object v1, Lcom/a/a/a/w$b;->g:Lcom/a/a/a/w$b;

    invoke-direct {v0, v1}, Lcom/a/a/a/w$a;-><init>(Lcom/a/a/a/w$b;)V

    invoke-virtual {p0}, Lcom/a/a/a/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/w$a;->a(Ljava/lang/String;)Lcom/a/a/a/w$a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/a/a/a/k;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/w$a;->b(Ljava/util/Map;)Lcom/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/a/a/a/w$b;Landroid/app/Activity;)Lcom/a/a/a/w$a;
    .locals 2

    .prologue
    .line 38
    const-string v0, "activity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/a/a/a/w$a;

    invoke-direct {v1, p0}, Lcom/a/a/a/w$a;-><init>(Lcom/a/a/a/w$b;)V

    invoke-virtual {v1, v0}, Lcom/a/a/a/w$a;->a(Ljava/util/Map;)Lcom/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/a/a/a/w$a;
    .locals 3

    .prologue
    .line 50
    const-string v0, "sessionId"

    invoke-static {v0, p0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 51
    new-instance v1, Lcom/a/a/a/w$a;

    sget-object v2, Lcom/a/a/a/w$b;->e:Lcom/a/a/a/w$b;

    invoke-direct {v1, v2}, Lcom/a/a/a/w$a;-><init>(Lcom/a/a/a/w$b;)V

    invoke-virtual {v1, v0}, Lcom/a/a/a/w$a;->a(Ljava/util/Map;)Lcom/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/w$a;
    .locals 2

    .prologue
    .line 55
    invoke-static {p0}, Lcom/a/a/a/w;->a(Ljava/lang/String;)Lcom/a/a/a/w$a;

    move-result-object v0

    const-string v1, "exceptionName"

    invoke-static {v1, p1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/a/w$a;->b(Ljava/util/Map;)Lcom/a/a/a/w$a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    iget-object v0, p0, Lcom/a/a/a/w;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/a/a/a/w;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->c:Lcom/a/a/a/w$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->d:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", customAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", predefinedType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", predefinedAttributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/a/a/a/w;->a:Lcom/a/a/a/x;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a/w;->i:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/a/a/a/w;->i:Ljava/lang/String;

    return-object v0
.end method
