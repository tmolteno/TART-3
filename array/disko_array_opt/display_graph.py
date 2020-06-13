# Display the tensorflow graph for the SVD computation
import tensorflow as tf
from datetime import datetime
import array_opt


stamp = datetime.now().strftime("%Y%m%d-%H%M%S")
logdir = 'logs/func/%s' % stamp
writer = tf.summary.create_file_writer(logdir)

# Sample data for your function.

ant = array_opt.YAntennaArray.from_json('best.json')
radius_min = 0.1

l, m, n_minus_1, p2j, theta, pixel_areas, radius, radius_min, min_spacing = array_opt.init(radius_min, ant)

x,y,z = array_opt.get_ant_pos(ant.x)

# Bracket the function call with
# tf.summary.trace_on() and tf.summary.trace_export().
tf.summary.trace_on(graph=True, profiler=True)
# Call only one tf.function when tracing.
z = array_opt.global_f(x, y, z, l, m, n_minus_1, p2j, pixel_areas, min_spacing)
with writer.as_default():
  tf.summary.trace_export(
      name="telescope_optimization_trace",
      step=0,
      profiler_outdir=logdir)

