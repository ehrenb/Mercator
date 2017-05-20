.class public final Lcom/paypal/android/sdk/go;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/fz;


# static fields
.field private static final a:Ljava/util/Map;

.field private static final b:Ljava/util/Map;

.field private static final c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->a:Lcom/paypal/android/sdk/fb;

    const-string v2, "Setuju dan Bayar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->b:Lcom/paypal/android/sdk/fb;

    const-string v2, "& lain"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->c:Lcom/paypal/android/sdk/fb;

    const-string v2, "Mengesahkan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->d:Lcom/paypal/android/sdk/fb;

    const-string v2, "Undur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->e:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sandaran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->f:Lcom/paypal/android/sdk/fb;

    const-string v2, "Batal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->g:Lcom/paypal/android/sdk/fb;

    const-string v2, "American Express"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->h:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carta Aura"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->i:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carte Aurore"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->j:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carta Prepagata PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->k:Lcom/paypal/android/sdk/fb;

    const-string v2, "Carte Bancaire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->l:Lcom/paypal/android/sdk/fb;

    const-string v2, "Cofinoga"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->m:Lcom/paypal/android/sdk/fb;

    const-string v2, "Delta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->n:Lcom/paypal/android/sdk/fb;

    const-string v2, "Discover"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->o:Lcom/paypal/android/sdk/fb;

    const-string v2, "Electron"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->p:Lcom/paypal/android/sdk/fb;

    const-string v2, "JCB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->q:Lcom/paypal/android/sdk/fb;

    const-string v2, "Maestro"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->r:Lcom/paypal/android/sdk/fb;

    const-string v2, "MasterCard"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->s:Lcom/paypal/android/sdk/fb;

    const-string v2, "Postepay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->t:Lcom/paypal/android/sdk/fb;

    const-string v2, "4 \u00e9toiles"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->u:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tarjeta Aurora"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->v:Lcom/paypal/android/sdk/fb;

    const-string v2, "Visa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->w:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tukar Kaedah Pembayaran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->x:Lcom/paypal/android/sdk/fb;

    const-string v2, "Menyemak"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->y:Lcom/paypal/android/sdk/fb;

    const-string v2, "Menyemak peranti ini\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->z:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kosongkan maklumat kad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->A:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sahkan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->B:Lcom/paypal/android/sdk/fb;

    const-string v2, "Adakah anda pasti anda ingin mengosongkan maklumat kad anda?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->C:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kad Caj"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->D:Lcom/paypal/android/sdk/fb;

    const-string v2, "Adakah anda pasti anda ingin log keluar dari PayPal?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->E:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->F:Lcom/paypal/android/sdk/fb;

    const-string v2, "Setuju"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->G:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tarikh Ciptaan Akaun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->H:Lcom/paypal/android/sdk/fb;

    const-string v2, "Status Akaun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->I:Lcom/paypal/android/sdk/fb;

    const-string v2, "Jenis Akaun"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->J:Lcom/paypal/android/sdk/fb;

    const-string v2, "Alamat"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->K:Lcom/paypal/android/sdk/fb;

    const-string v2, "Julat Umur"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->L:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tarikh Lahir"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->M:Lcom/paypal/android/sdk/fb;

    const-string v2, "Alamat e-mel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->N:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nama Penuh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->O:Lcom/paypal/android/sdk/fb;

    const-string v2, "Jantina"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->P:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bahasa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Q:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tempatan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->R:Lcom/paypal/android/sdk/fb;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->S:Lcom/paypal/android/sdk/fb;

    const-string v2, "Zon Waktu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->T:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kongsi yang berikut: %s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->U:Lcom/paypal/android/sdk/fb;

    const-string v2, "Gunakan Daftar Keluar Lancar."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->V:Lcom/paypal/android/sdk/fb;

    const-string v2, "%s meminta anda:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->W:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kongsi <a href=\'%1$s\'>kaedah pembayaran</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->X:Lcom/paypal/android/sdk/fb;

    const-string v2, "Aktifkan paparan pilihan pendanaan anda untuk membolehkan anda membuat pilihan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Y:Lcom/paypal/android/sdk/fb;

    const-string v2, "<a href=\'%1$s\'>Benarkan caj</a> untuk pembelian %2$s pada masa depan yang dibayar melalui PayPal. Anda mengarahkan PayPal untuk membayar semua amaun yang diminta oleh %3$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->Z:Lcom/paypal/android/sdk/fb;

    const-string v2, "Benarkan mereka menambah dan menguruskan kad kesetiaan mereka dalam dompet Paypal mereka."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aa:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bersetuju dengan <a href=\'%2$s\'>dasar privasi</a> dan <a href=\'%3$s\'>perjanjian pengguna</a> %1$s."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ab:Lcom/paypal/android/sdk/fb;

    const-string v2, "Izinkan mereka untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ac:Lcom/paypal/android/sdk/fb;

    const-string v2, "Izinkan mereka untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ad:Lcom/paypal/android/sdk/fb;

    const-string v2, "Persetujuan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ae:Lcom/paypal/android/sdk/fb;

    const-string v2, "E-mel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->af:Lcom/paypal/android/sdk/fb;

    const-string v2, "Data Olok-olok"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ag:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sandbox"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ah:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tamat tempoh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ai:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi kaedah pembayaran anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aj:Lcom/paypal/android/sdk/fb;

    const-string v2, "Terlupa kata laluan?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ak:Lcom/paypal/android/sdk/fb;

    const-string v2, "Dari"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->al:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bagaimanakah anda ingin membiayai bayaran masa depan kepada %1$s?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->am:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>Sumber pendanaan lalai anda akan digunakan untuk membuat bayaran PayPal masa depan daripada peniaga ini.</p><p>Untuk membatalkan perjanjian ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan Saya</strong> &gt; <strong>Log Masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Bahagian Bayaran Berulang dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> akan diguna pakai.</p><p>Untuk memastikan bayaran boleh dibuat dengan akaun PayPal anda, aplikasi ini mungkin mensimulasikan transaksi ujian kecil, tetapi tiada wang akan dipindahkan untuk transaksi ini.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->an:Lcom/paypal/android/sdk/fb;

    const-string v2, "Ralat Dalaman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ao:Lcom/paypal/android/sdk/fb;

    const-string v2, "<p>Dengan mengklik butang di bawah, dengan ini saya bersetuju dengan terma-terma <a href=\'%1$s\'>Perjanjian Pengguna PayPal</a> dan mengisytiharkan bahawa saya mematuhi undang-undang dan peraturan Jepun, termasuk sekatan terhadap bayaran ke Korea Utara dan Iran menurut <a href=\'%2$s\'>Akta Pertukaran Asing dan Perdagangan Luar Negeri</a> untuk melengkapkan transaksi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ap:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log Masuk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aq:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log Masuk dengan PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ar:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log Keluar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->as:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log keluar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->at:Lcom/paypal/android/sdk/fb;

    const-string v2, "OK"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->au:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kata Laluan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->av:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayar Selepas Penghantaran"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aw:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayar dengan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ax:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayar dengan Kad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ay:Lcom/paypal/android/sdk/fb;

    const-string v2, "Baki PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->az:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kredit PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aA:Lcom/paypal/android/sdk/fb;

    const-string v2, "Telefon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aB:Lcom/paypal/android/sdk/fb;

    const-string v2, "PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aC:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kaedah Pembayaran Pilihan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aD:Lcom/paypal/android/sdk/fb;

    const-string v2, "PayPal melindungi <a href=\'%s\'>privasi</a> dan maklumat kewangan anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aE:Lcom/paypal/android/sdk/fb;

    const-string v2, "Memproses"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aF:Lcom/paypal/android/sdk/fb;

    const-string v2, "Ingat kad"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aG:Lcom/paypal/android/sdk/fb;

    const-string v2, "Minta Wang"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aH:Lcom/paypal/android/sdk/fb;

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aI:Lcom/paypal/android/sdk/fb;

    const-string v2, "Simpanan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aJ:Lcom/paypal/android/sdk/fb;

    const-string v2, "Hantar Wang"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aK:Lcom/paypal/android/sdk/fb;

    const-string v2, "Terdapat masalah untuk berhubung dengan pelayan PayPal. Sila cuba semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aL:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sila log masuk semula ke PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aM:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sesi Telah Tamat Tempoh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aN:Lcom/paypal/android/sdk/fb;

    const-string v2, "Alamat Pengiriman"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aO:Lcom/paypal/android/sdk/fb;

    const-string v2, "Baru dengan PayPal? Daftar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aP:Lcom/paypal/android/sdk/fb;

    const-string v2, "Teruskan log masuk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aQ:Lcom/paypal/android/sdk/fb;

    const-string v2, "Ralat sistem (%s). Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aR:Lcom/paypal/android/sdk/fb;

    const-string v2, "Cuba Semula"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aS:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tidak dapat log masuk, kerana akaun anda telah diaktifkan dengan pengesahan dua faktor."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aT:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kod Keselamatan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aU:Lcom/paypal/android/sdk/fb;

    const-string v2, "Hantar mesej teks ke telefon anda. Kod 6 angka yang anda terima akan sah selama 5 minit."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aV:Lcom/paypal/android/sdk/fb;

    const-string v2, "Menghantar Teks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aW:Lcom/paypal/android/sdk/fb;

    const-string v2, "Masukkan kod keselamatan 6 angka"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aX:Lcom/paypal/android/sdk/fb;

    const-string v2, "Nombor telefon mudah alih anda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aY:Lcom/paypal/android/sdk/fb;

    const-string v2, "Hantar Teks"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aZ:Lcom/paypal/android/sdk/fb;

    const-string v2, "Hantar Teks sekali lagi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->ba:Lcom/paypal/android/sdk/fb;

    const-string v2, "Tidak dapat log masuk, kerana akaun anda telah diaktifkan dengan pengesahan dua faktor. Sila lawati laman web PayPal untuk mengaktifkan kunci keselamatan anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bb:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayaran dari peranti ini tidak dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bc:Lcom/paypal/android/sdk/fb;

    const-string v2, "Peranti Tidak Dibenarkan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bd:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayaran kepada peniaga ini tidak dibenarkan (ID klien tidak sah)."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->be:Lcom/paypal/android/sdk/fb;

    const-string v2, "Peniaga tidak sah"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bf:Lcom/paypal/android/sdk/fb;

    const-string v2, "Terdapat masalah semasa memproses bayaran anda. Sila cuba semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bg:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sumber Tidak Dikenali"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bh:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kami Memohon Maaf"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bi:Lcom/paypal/android/sdk/fb;

    const-string v2, "Pesanan Anda"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bj:Lcom/paypal/android/sdk/fb;

    const-string v2, "Peranti ini tidak boleh berhubung dengan PayPal kerana versi Android ini terlalu lama. Sila naik taraf Android atau cuba peranti baru."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bk:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kosongkan Kad?"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bl:Lcom/paypal/android/sdk/fb;

    const-string v2, "Persetujuan Gagal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bm:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sambungan Gagal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bn:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log Masuk Gagal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bo:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log masuk dengan kata laluan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bp:Lcom/paypal/android/sdk/fb;

    const-string v2, "Log masuk dengan PIN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bq:Lcom/paypal/android/sdk/fb;

    const-string v2, "Sebentar\u2026"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->br:Lcom/paypal/android/sdk/fb;

    const-string v2, "Bayaran Gagal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bs:Lcom/paypal/android/sdk/fb;

    const-string v2, "Imbas"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bt:Lcom/paypal/android/sdk/fb;

    const-string v2, "Kod Keselamatan Salah. Sila cuba semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bu:Lcom/paypal/android/sdk/fb;

    const-string v2, "Melalui"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bv:Lcom/paypal/android/sdk/fb;

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|AT"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BE"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|BG"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CH"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CY"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|CZ"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DE"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|DK"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>kaedah pembayaran</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|EE"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|ES"

    const-string v2, "Kongsi maklumat dengan mereka tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|FI"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GB"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|GR"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|HU"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IE"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|IT"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LI"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LT"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LU"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|LV"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|MT"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NL"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|NO"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>kaedah pembayaran</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PL"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>sumber pendanaan</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|PT"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SE"

    const-string v2, "Kongsi maklumat tentang <a href=\'%1$s\'>kaedah pembayaran</a> yang dipautkan ke akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SI"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SK"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|SM"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FINANCIAL_INSTRUMENTS|VA"

    const-string v2, "Kongsi <a href=\'%1$s\'>sumber pendanaan</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|AU"

    const-string v2, "<p><a href=\'%1$s\'>Benarkan caj</a> untuk pembelian %2$s pada masa depan yang dibayar melalui PayPal. Anda mengarahkan PayPal untuk membayar semua amaun yang diminta oleh %3$s.</p><p>Sila lihat <a href=\'https://www.paypal.com/webapps/mpp/ua/recurringpymts-full\'>Bayaran Berulang dan Perjanjian Pengebilan PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|CN"

    const-string v2, "<p><a href=\'%1$s\'>Benarkan caj</a> untuk pembelian %2$s pada masa depan yang dibayar melalui PayPal. Anda mengarahkan PayPal untuk membayar semua amaun yang diminta oleh %3$s.</p><p>Sila lihat <a href=\'https://cms.paypal.com/c2/cgi-bin/?cmd=_render-content&content_ID=ua/UserAgreement_full\'>Bayaran Berulang dan Perjanjian Pengebilan PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|MY"

    const-string v2, "<a href=\'%1$s\'>Benarkan caj</a> untuk pembelian pada masa depan yang dibayar melalui PayPal. Anda membenarkan dan mengarahkan PayPal untuk membayar semua amaun."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|NZ"

    const-string v2, "<a href=\'%1$s\'>Benarkan caj</a> untuk pembelian pada masa depan yang dibayar melalui PayPal. Anda membenarkan dan mengarahkan PayPal untuk membayar semua amaun."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|SG"

    const-string v2, "<a href=\'%1$s\'>Benarkan caj</a> untuk pembelian pada masa depan yang dibayar melalui PayPal. Anda membenarkan dan mengarahkan PayPal untuk membayar semua amaun."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_FUTURE_PAYMENTS|US"

    const-string v2, "Luluskan terlebih dahulu bayaran masa depan yang dibuat daripada akaun PayPal anda tanpa log masuk ke PayPal setiap kali. <a href=\'%1$s\'>Lihat terma-terma tambahan</a>, termasuk kaedah pembayaran dan cara untuk membatalkan bayaran masa depan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|AT"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|BE"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|CH"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|DE"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|GB"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|NL"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_REQUEST_MONEY|PL"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>meminta wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|AT"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|BE"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|CH"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|DE"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|GB"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|NL"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "CONSENT_AGREEMENT_SEND_MONEY|PL"

    const-string v2, "Izinkan %2$s untuk <a href=\'%1$s\'>menghantar wang</a> bagi pihak anda sehingga anda menarik balik persetujuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi maklumat tentang sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi maklumat tentang sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi maklumat tentang sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FINANCIAL_INSTRUMENTS_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>Kaedah Pembayaran</strong></h1><p>PayPal hanya berkongsi sumber pendanaan anda yang tersedia untuk digunakan.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada wang akan dipindahkan.</p><p>Kaedah pembayaran lalai anda (baki PayPal, akaun bank terpaut, kad debit atau kad kredit anda, dalam aturan tersebut) akan digunakan untuk membayar pembelian melalui PayPal. Sila ambil perhatian, jika kaedah pembayaran lalai anda tidak mempunyai wang yang cukup untuk membayar pembelian tersebut, bank atau pembekal kad anda mungkin mengenakan yuran terhadap anda.</p><p>Untuk membatalkan perjanjian ini, log masuk ke akaun PayPal anda dan pergi ke <strong>Profil</strong>, kemudian klik <strong>Tetapan saya</strong> dan <strong>Ubah</strong> di sebelah \u201cLog masuk dengan PayPal.\u201d</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|BR"

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada wang akan dipindahkan.</p><p>Baki PayPal atau kad kredit atau kad debit utama anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan perjanjian ini, log masuk ke akaun PayPal anda dan pergi ke <strong>Profil</strong> &gt; <strong>Tetapan Saya</strong> &gt; <strong>Log Masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|CN"

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>Untuk memastikan Akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada bayaran akan dipindahkan.</p><p>Kaedah pembayaran lalai anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan perjanjian ini, log masuk ke Akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan</strong> &gt; <strong>Log Masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>Sumber pendanaan lalai anda akan digunakan untuk membuat bayaran PayPal masa depan daripada peniaga ini.</p><p>Untuk membatalkan perjanjian ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan Saya</strong> &gt; <strong>Log Masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Bahagian Bayaran Berulang dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> akan diguna pakai.</p><p>Untuk memastikan bayaran boleh dibuat dengan akaun PayPal anda, aplikasi ini mungkin mensimulasikan transaksi ujian kecil, tetapi tiada wang akan dipindahkan untuk transaksi ini.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|HK"

    const-string v2, "<h1><strong>Kebenaran Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada bayaran akan dipindahkan.</p><p>Kaedah pembayaran lalai anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan kebenaran ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan akaun saya</strong> &gt; <strong>Log masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Sila lihat bahagian \u201cBayaran Diluluskan Terlebih Dahulu\u201d dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|JP"

    const-string v2, "<h1><strong>Kebenaran Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada bayaran akan dipindahkan.</p><p>Kaedah pembayaran lalai anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan kebenaran ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan akaun saya</strong> &gt; <strong>Log masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Sila lihat bahagian \u201cBayaran Diluluskan Terlebih Dahulu\u201d dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MX"

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada wang akan dipindahkan.</p><p>Baki PayPal atau kad kredit atau kad debit utama anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan perjanjian ini, log masuk ke akaun PayPal anda dan pergi ke <strong>Profil</strong> &gt; <strong>Tetapan Saya</strong> &gt; <strong>Log Masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|MY"

    const-string v2, "<h1><strong>Kebenaran Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada bayaran akan dipindahkan.</p><p>Kaedah pembayaran lalai anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan kebenaran ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan akaun saya</strong> &gt; <strong>Log masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Sila lihat bahagian \u201cBayaran Diluluskan Terlebih Dahulu\u201d dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|NZ"

    const-string v2, "<h1><strong>Kebenaran Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada bayaran akan dipindahkan.</p><p>Kaedah pembayaran lalai anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan kebenaran ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan akaun saya</strong> &gt; <strong>Log masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Sila lihat bahagian \u201cBayaran Diluluskan Terlebih Dahulu\u201d dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|SG"

    const-string v2, "<h1><strong>Kebenaran Bayaran Masa Depan</strong></h1><p>Untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan, aplikasi ini mungkin mensimulasikan transaksi ujian kecil tetapi tiada bayaran akan dipindahkan.</p><p>Kaedah pembayaran lalai anda akan digunakan untuk membayar pembelian melalui PayPal.</p><p>Untuk membatalkan kebenaran ini, log masuk ke akaun PayPal anda, pergi ke <strong>Profil</strong> &gt; <strong>Tetapan akaun saya</strong> &gt; <strong>Log masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Sila lihat bahagian \u201cBayaran Diluluskan Terlebih Dahulu\u201d dalam <a href=\'%s\'>Perjanjian Pengguna PayPal</a> untuk maklumat lanjut.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "FUTURE_PAYMENT_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>Perjanjian Bayaran Masa Depan</strong></h1><p>PayPal akan menggunakan dahulu baki PayPal anda untuk membayar pembelian anda. Jika baki anda tidak mencukupi maka akaun bank, Kredit PayPal, kad debit, kad kredit dan/atau eCheck anda akan digunakan dalam pesanan tersebut.</p><p>Untuk membatalkan perjanjian ini, layari www.paypal.com <strong>Profil</strong> &gt; <strong>Tetapan Saya</strong> &gt; <strong>Log Masuk dengan PayPal</strong> dan alih keluar peniaga ini daripada senarai.</p><p>Kebenaran bayaran kecil mungkin diperlukan untuk memastikan akaun PayPal anda boleh dikenakan caj pada masa depan. Kebenaran akan dibatalkan dan anda tidak akan dikenakan caj.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|AU"

    const-string v2, "Log Masuk dengan PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "LOG_IN_TO_PAYPAL|GB"

    const-string v2, "Log Masuk dengan PayPal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AD"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan rakan kongsi.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda dan klik pada ikon gear. Pergi ke <strong>Keselamatan</strong>, pilih <strong>Log Masuk Dengan PayPal</strong> dan alih keluar rakan kongsi ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|AU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> anda dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|BG"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CH"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan rakan kongsi.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda dan klik pada ikon gear. Pergi ke <strong>Keselamatan</strong>, pilih <strong>Log Masuk Dengan PayPal</strong> dan alih keluar rakan kongsi ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CY"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|CZ"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan rakan kongsi.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda dan klik pada ikon gear. Pergi ke <strong>Keselamatan</strong>, pilih <strong>Log Masuk Dengan PayPal</strong> dan alih keluar rakan kongsi ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|DK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|EE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ES"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, klik pada ikon gear di sudut kanan sebelah atas, pilih <strong>Pusat Keselamatan</strong>, pilih <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga tersebut. Jika anda masih menggunakan laman web klasik, pergi ke <strong>Profil Saya</strong>, pilih <strong>Tetapan Akaun Saya</strong>, pilih <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga tersebut.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|FI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GB"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan rakan kongsi.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian di bawah tetapan <strong>Profil</strong>, pergi ke <strong>Log Masuk dengan PayPal</strong> dan alih keluar rakan kongsi ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|GR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|HU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IS"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|IT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.it, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|LV"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|MT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> anda dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|NO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PL"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> anda dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|PT"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RO"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|RU"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan rakan kongsi.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.ru, klik pada ikon gear di sudut kanan sebelah atas, pilih tab <strong>Keselamatan</strong> dan dalam pilihan <strong>Log Masuk Dengan PayPal</strong>, alih keluar rakan kongsi ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak rakan kongsi.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SE"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke akaun PayPal anda, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SI"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SK"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|SM"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|TR"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com.tr, klik pada ikon gear di sudut kanan sebelah atas, pilih tab <strong>Keselamatan</strong> dan dalam pilihan <strong>Log Masuk Dengan PayPal</strong>, alih keluar rakan kongsi ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|UA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|US"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke pilihan <strong>Log Masuk Dengan PayPal</strong> di bawah tetapan <strong>Profil</strong> dan alih keluar peniaga ini.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|VA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    const-string v1, "REQUEST_OR_SEND_MONEY_LEGAL_DETAILS|ZA"

    const-string v2, "<h1><strong>%s</strong></h1><p>Sebarang butiran transaksi yang berkaitan akan dikongsi dengan peniaga.</p><p>Untuk menarik balik persetujuan, log masuk ke paypal.com, kemudian pergi ke <strong>Profil</strong>, <strong>Keselamatan</strong>, cari <strong>Log Masuk Dengan PayPal</strong> dan alih keluar peniaga ini.</p><p>PayPal tidak bertanggungjawab terhadap sebarang tindakan atau kesilapan pihak peniaga.</p>"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AMOUNT_MISMATCH"

    const-string v2, "Jumlah amaun item kart tidak sepadan dengan amaun jualan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ALREADY_COMPLETED"

    const-string v2, "Kebenaran ini sudah dilengkapkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_CANNOT_BE_VOIDED"

    const-string v2, "Kebenaran dalam keadaan yang tidak boleh dibatalkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_EXPIRED"

    const-string v2, "Kebenaran telah tamat tempoh."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_ID_DOES_NOT_EXIST"

    const-string v2, "ID kebenaran yang diminta tidak wujud."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTHORIZATION_VOIDED"

    const-string v2, "Kebenaran telah dibatalkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_CHILD_AUTHORIZATION"

    const-string v2, "Hanya boleh membenarkan semula kebenaran asal, bukan kebenaran semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CANNOT_REAUTH_INSIDE_HONOR_PERIOD"

    const-string v2, "Kebenaran semula tidak dibenarkan dalam tempoh penunaian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CAPTURE_AMOUNT_LIMIT_EXCEEDED"

    const-string v2, "Amaun melebihi had yang dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CARD_TOKEN_PAYER_MISMATCH"

    const-string v2, "Tidak boleh mengakses maklumat kad yang disimpan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_CVV_CHECK_FAILED"

    const-string v2, "Maklumat kad tidak sah. Sila betulkannya dan serahkan semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CREDIT_CARD_REFUSED"

    const-string v2, "Kad ditolak."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_MISMATCH"

    const-string v2, "Mata wang tahanan mesti sama dengan mata wang kebenaran."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "CURRENCY_NOT_ALLOWED"

    const-string v2, "Mata wang ini tidak disokong oleh PayPal buat masa ini."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "DATA_RETRIEVAL"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_REQUEST_ID"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD"

    const-string v2, "Kad telah tamat tempoh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "EXPIRED_CREDIT_CARD_TOKEN"

    const-string v2, "Maklumat untuk kad ini tidak lagi terdapat dalam fail.\nSila serahkan semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "FEATURE_UNSUPPORTED_FOR_PAYEE"

    const-string v2, "Ciri tidak disokong untuk vendor ini."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "FULL_REFUND_NOT_ALLOWED_AFTER_PARTIAL_REFUND"

    const-string v2, "Sebahagian daripada transaksi ini sudah dibayar balik."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "IMMEDIATE_PAY_NOT_SUPPORTED"

    const-string v2, "Bayar segera tidak disokong untuk Tujuan yang diluluskan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INSTRUMENT_DECLINED"

    const-string v2, "Kaedah pembayaran yang anda pilih tidak diterima. Sila pilih kaedah berbeza."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INSUFFICIENT_FUNDS"

    const-string v2, "Pembeli tidak dapat membayar - baki akaun tidak mencukupi."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_ACCOUNT_NUMBER"

    const-string v2, "Nombor akaun itu tidak wujud."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_ARGUMENT"

    const-string v2, "Transaksi ditolak kerana argumen tidak sah."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_CITY_STATE_ZIP"

    const-string v2, "Kombinasi bandar/negeri/poskod tidak sah."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_FACILITATOR_CONFIGURATION"

    const-string v2, "Transaksi ini tidak boleh diproses akibat konfigurasi fasilitator tidak sah."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_PAYER_ID"

    const-string v2, "Ralat sistem (ID Pembayar tidak sah). Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_RESOURCE_ID"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_INVALID"

    const-string v2, "Akaun vendor tidak mempunyai e-mel yang disahkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Vendor ini tidak boleh menerima bayaran buat masa ini."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_NO_CONFIRMED_EMAIL"

    const-string v2, "Akaun vendor tidak mempunyai e-mel yang disahkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYEE_ACCOUNT_RESTRICTED"

    const-string v2, "Vendor ini tidak boleh menerima bayaran buat masa ini."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_LOCKED_OR_CLOSED"

    const-string v2, "Akaun anda dikunci atau ditutup."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYER_ACCOUNT_RESTRICTED"

    const-string v2, "Akaun anda disekat."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYER_CANNOT_PAY"

    const-string v2, "Anda tidak boleh membayar transaksi ini dengan PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYER_EMPTY_BILLING_ADDRESS"

    const-string v2, "Alamat pengebilan diperlukan untuk transaksi kad kredit bukan PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYER_ID_MISSING_FOR_CARD_TOKEN"

    const-string v2, "Tidak boleh mengakses maklumat kad yang disimpan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_APPROVAL_EXPIRED"

    const-string v2, "Kelulusan bayaran telah tamat tempoh."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_EXPIRED"

    const-string v2, "Bayaran telah tamat tempoh."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_NOT_APPROVED_FOR_EXECUTION"

    const-string v2, "Pembayar belum meluluskan bayaran."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_REQUEST_ID_INVALID"

    const-string v2, "ID permintaan PayPal tidak sah. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_STATE_INVALID"

    const-string v2, "Permintaan ini tidak sah akibat keadaan semasa bayaran tersebut."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PERMISSION_DENIED"

    const-string v2, "Tiada keizinan untuk operasi yang diminta."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "REFUND_EXCEEDED_TRANSACTION_AMOUNT"

    const-string v2, "Bayaran balik yang diminta melebihi amaun transaksi asal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "REFUND_TIME_LIMIT_EXCEEDED"

    const-string v2, "Transaksi ini terlalu lama untuk dibayar balik."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "REQUIRED_SCOPE_MISSING"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "TOO_MANY_REAUTHORIZATIONS"

    const-string v2, "Tiada lagi kebenaran semula untuk kebenaran ini dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_ALREADY_REFUNDED"

    const-string v2, "Transaksi ini sudah dibayar balik."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_LIMIT_EXCEEDED"

    const-string v2, "Amaun melebihi had yang dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED"

    const-string v2, "Transaksi ditolak."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_BY_PAYPAL_RISK"

    const-string v2, "Transaksi ditolak."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "TRANSACTION_REFUSED_PAYEE_PREFERENCE"

    const-string v2, "Keutamaan profil peniaga telah ditetapkan untuk menafikan transaksi tertentu secara automatik."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "UNSUPPORTED_PAYEE_COUNTRY"

    const-string v2, "Negara anda tidak disokong."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "VALIDATION_ERROR"

    const-string v2, "Maklumat bayaran tidak sah. Sila betulkannya dan serahkan semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "ORDER_ALREADY_COMPLETED"

    const-string v2, "Pesanan telah dibatalkan, tamat tempoh atau dilengkapkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "MAXIMUM_ALLOWED_AUTHORIZATION_REACHED_FOR_ORDER"

    const-string v2, "Bilangan maksimum kebenaran yang dibenarkan untuk pesanan telah dicapai."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "ORDER_VOIDED"

    const-string v2, "Pesanan telah dibatalkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "ORDER_CANNOT_BE_VOIDED"

    const-string v2, "Pesanan dalam keadaan yang menghalang pembatalan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_EXPERIENCE_PROFILE_ID"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "UNAUTHORIZED_PAYMENT"

    const-string v2, "Peniaga tidak menerima jenis bayaran ini."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "DCC_UNSUPPORTED_CURRENCY_CC_TYPE"

    const-string v2, "Mata wang tidak disokong untuk jenis kad."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "DCC_CC_TYPE_NOT_SUPPORTED"

    const-string v2, "Jenis kad tidak disokong."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "ADDRESS_ADDITION_ERROR"

    const-string v2, "Ralat ditemui semasa menambah alamat pengiriman ke akaun PayPal."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "DUPLICATE_TRANSACTION"

    const-string v2, "Transaksi duplikasi."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "INVALID_SHIPPING_ADDRESS"

    const-string v2, "Alamat penghantaran yang diberi tidak sah."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_EXPIRED_PAYMENT_CARD"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - kad anda telah tamat tempoh. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_INSTANT_PAYMENT_REQUIRED"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - pembayaran serta-merta diperlukan, seperti kad kredit. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_CONFIRMED_CARD"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - kad mesti disahkan. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_PHONE_NUMBER"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - aplikasi ini memerlukan akaun anda menyertakan nombor telefon. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEED_VALID_FUNDING_INSTRUMENT"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - akaun memerlukan sumber pendanaan yang sah, seperti bank atau kad pembayaran. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_NEGATIVE_BALANCE"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - baki anda negatif. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "PAYMENT_CREATION_ERROR_SENDING_LIMIT_REACHED"

    const-string v2, "Terdapat masalah semasa menyediakan bayaran ini - had perbelanjaan anda telah dicapai. Sila lawati laman web PayPal untuk menyemak akaun anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_RISK_FAILURE"

    const-string v2, "Ditolak kerana terdapat risiko."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_OFAC_BLOCKED_IP"

    const-string v2, "Klien tidak dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "AUTH_RC_IP_COMPLIANCE_FAILURE"

    const-string v2, "Klien tidak dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "invalid_user"

    const-string v2, "Nama pengguna/kata laluan salah. Sila cuba semula."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "locked_user"

    const-string v2, "Akaun PayPal anda telah dikunci buat sementara. Sila cuba semula kemudian atau pergi ke www.paypal.com untuk membuka kunci akaun PayPal anda dengan segera."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "max_attempts_exceeded"

    const-string v2, "Terlalu banyak cubaan log masuk gagal. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "invalid_request"

    const-string v2, "Ralat telah berlaku."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "unauthorized_client"

    const-string v2, "Permintaan tidak dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "access_denied"

    const-string v2, "Permintaan tidak dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "unsupported_response_type"

    const-string v2, "Ralat telah berlaku."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "invalid_scope"

    const-string v2, "Permintaan tidak dibenarkan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "server_error"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "temporarily_unavailable"

    const-string v2, "Ralat sistem. Sila cuba semula kemudian."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "stepup_required"

    const-string v2, "Log masuk anda tidak dapat dilengkapkan buat masa ini. Sila cuba semula kemudian atau pergi ke www.paypal.com untuk mengemukakan apa-apa kebimbangan tentang keselamatan dengan akaun PayPal anda."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    const-string v1, "account_locked_generate_challenge_limit_exceeded"

    const-string v2, "Terlalu banyak cubaan log masuk. Sila cuba semula kemudian atau hubungi PayPal untuk mendapatkan bantuan."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "ms"

    return-object v0
.end method

.method public final synthetic a(Ljava/lang/Enum;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    check-cast p1, Lcom/paypal/android/sdk/fb;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/paypal/android/sdk/fb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/paypal/android/sdk/go;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/go;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/go;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
